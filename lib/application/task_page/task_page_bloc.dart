import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/i_repository/i_task_repository.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_page_event.dart';
part 'task_page_state.dart';
part 'task_page_bloc.freezed.dart';

@lazySingleton
class TaskPageBloc extends Bloc<TaskPageEvent, TaskPageState> {
  TaskPageBloc(ITaskRepository taskRepository) : super(const _Initial()) {
    on<TaskPageEvent>((event, emit) async {
      await event.map(loadTasks: (e) async {
        if (_allTasksCollections != null) {
          emit(TaskPageState.displayTasksCollections(
              addTaskTEC: addTaskTEC,
              allTasksCollections: _allTasksCollections!));
        } else {
          final getAllTasksFailureOrSuccess =
              await taskRepository.getAllTasks();
          getAllTasksFailureOrSuccess.fold(
            (l) => emit(const TaskPageState.loadFailure()),
            (r) {
              _allTasksCollections = filterForEmptyTaskCollections(r);

              emit(TaskPageState.displayTasksCollections(
                  addTaskTEC: addTaskTEC,
                  allTasksCollections: _allTasksCollections!));
            },
          );
        }
      }, toggleTaskStatus: (e) async {
        final tasksCollection = _allTasksCollections!
            .findById<TasksCollection>(e.tasksCollectionId)!;

        final tasks = List.generate(tasksCollection.tasks.length, (i) {
          Task taskAtIndex = tasksCollection.tasks[i];
          return i == e.taskIndex
              ? taskAtIndex.copyWith(completed: !taskAtIndex.completed)
              : taskAtIndex;
        });

        final mutatedTasksCollection = tasksCollection.copyWith(tasks: tasks);

        final updateTasksCollectionFailureOrSuccess = await taskRepository
            .saveTask(tasksCollection: mutatedTasksCollection);
        updateTasksCollectionFailureOrSuccess
            .fold((l) => print('failed to save'), (r) {
          _allTasksCollections = _replaceInTasksCollectionList(
              allTasksCollections: _allTasksCollections!,
              idToReplace: mutatedTasksCollection.id!,
              whatToReplace: r);
        });

        emit(TaskPageState.displayTasksCollections(
            addTaskTEC: addTaskTEC,
            allTasksCollections: _allTasksCollections!));
      }, addTask: (e) async {
        final todayTasksCollection = getTaskCollectionForToday();

        if (todayTasksCollection != null) {
          final updatedTasksCollection =
              _addTaskToExistingTasksCollection(todayTasksCollection);

          await updateAllTaskCollections(
              taskRepository: taskRepository,
              newTasksCollection: updatedTasksCollection,
              oldTasksCollection: todayTasksCollection);
        } else {
          final newTasksCollection = _createNewTaskCollection();
          final saveNewTaskCollectionFailureOrSuccess = await taskRepository
              .saveTask(tasksCollection: newTasksCollection);
          saveNewTaskCollectionFailureOrSuccess
              .fold((l) => print('failed to save'), (r) {
            _allTasksCollections = _addToTasksCollectionList(
                allTasksCollections: _allTasksCollections!, whatToAdd: r);
          });
        }

        addTaskTEC.clear();

        emit(TaskPageState.displayTasksCollections(
            addTaskTEC: addTaskTEC,
            allTasksCollections: _allTasksCollections!));
      }, deleteTask: (e) async {
        final TasksCollection tasksCollectionToModify = _allTasksCollections!
            .findById<TasksCollection>(e.tasksCollectionId)!;

        final taskToModify = List<Task>.from(tasksCollectionToModify.tasks);
        taskToModify.removeAt(e.taskIndex);

        //handle if tasksCollection is empty
        //and remove it
        if (taskToModify.isEmpty) {
          final deleteFailureOrSuccess = await taskRepository
              .deleteTasksCollection(tasksCollectionId: e.tasksCollectionId);

          deleteFailureOrSuccess.fold(
            (l) => null,
            (r) {
              _allTasksCollections =
                  List<TasksCollection>.from(_allTasksCollections!)
                    ..remove(tasksCollectionToModify);
            },
          );

          emit(TaskPageState.displayTasksCollections(
              addTaskTEC: addTaskTEC,
              allTasksCollections: _allTasksCollections!));
        } else {
          final TasksCollection modifiedTasksCollection =
              tasksCollectionToModify.copyWith(tasks: taskToModify);

          await updateAllTaskCollections(
              taskRepository: taskRepository,
              newTasksCollection: modifiedTasksCollection,
              oldTasksCollection: tasksCollectionToModify);
          emit(TaskPageState.displayTasksCollections(
              addTaskTEC: addTaskTEC,
              allTasksCollections: _allTasksCollections!));
        }
      });
    });
  }

  //Note that this is an implace method!
  Future<void> updateAllTaskCollections(
      {required TasksCollection newTasksCollection,
      required TasksCollection oldTasksCollection,
      required ITaskRepository taskRepository}) async {
    final updateTasksCollectionFailureOrSuccess =
        await taskRepository.saveTask(tasksCollection: newTasksCollection);

    updateTasksCollectionFailureOrSuccess.fold((l) => print('failed to save'),
        (r) {
      _allTasksCollections = _replaceInTasksCollectionList(
          allTasksCollections: _allTasksCollections!,
          idToReplace: oldTasksCollection.id!,
          whatToReplace: r);
    });
  }

  List<TasksCollection> _addToTasksCollectionList(
      {required List<TasksCollection> allTasksCollections,
      required TasksCollection whatToAdd}) {
    return [...allTasksCollections, whatToAdd];
  }

  List<TasksCollection> _replaceInTasksCollectionList(
      {required int idToReplace,
      required TasksCollection whatToReplace,
      required List<TasksCollection> allTasksCollections}) {
    return allTasksCollections
        .map((e) => e.id == idToReplace ? whatToReplace : e)
        .toList();
  }

  TasksCollection _addTaskToExistingTasksCollection(
      TasksCollection whatToAddTo) {
    final newTask = Task(
      title: addTaskTEC.text,
    );
    final modifiedTasksCollection =
        whatToAddTo.copyWith(tasks: [...whatToAddTo.tasks, newTask]);

    return modifiedTasksCollection;
  }

  TasksCollection _createNewTaskCollection() {
    final newTask = Task(
      title: addTaskTEC.text,
    );

    final newTaskCollection =
        TasksCollection(dateTime: DateTime.now(), tasks: [newTask]);

    return newTaskCollection;
  }

  List<TasksCollection>? _allTasksCollections;

  TextEditingController addTaskTEC = TextEditingController();

  TasksCollection? getTaskCollectionForToday() {
    try {
      return _allTasksCollections!.firstWhere(
        (element) =>
            element.dateTime.whichDay.toString().toLowerCase() == 'today',
      );
    } catch (e) {
      return null;
    }
  }

  List<TasksCollection>? filterForEmptyTaskCollections(
      List<TasksCollection> allTasksCollections) {
    return allTasksCollections
        .where((element) => element.tasks.isNotEmpty)
        .toList();
  }
}
