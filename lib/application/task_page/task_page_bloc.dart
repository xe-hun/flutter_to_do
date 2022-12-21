import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task, State;
import 'package:flutter/cupertino.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/i_repository/i_task_repository.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';

part 'task_page_bloc.freezed.dart';
part 'task_page_event.dart';
part 'task_page_state.dart';

@lazySingleton
class TaskPageBloc extends Bloc<TaskPageEvent, TaskPageState> {
  TaskPageBloc(ITaskRepository taskRepository) : super(const _Initial()) {
    on<TaskPageEvent>((event, emit) async {
      await event.map(
          //loads or reloads tasks collection on all tasks page.
          loadTasks: (e) async {
        if (_allTasksCollections != null) {
          emit(TaskPageState.displayTasksCollections(
            allTasksCollections: _allTasksCollections!,
          ));
        } else {
          // first app visit and allTasksCollection hasn't been loaded.

          (await taskRepository.getAllTasks()).fold(
            (l) => emit(const TaskPageState.loadFailure()),
            (r) {
              _allTasksCollections = filterForEmptyTaskCollections(r);

              emit(TaskPageState.displayTasksCollections(
                  allTasksCollections: _allTasksCollections!));
            },
          );
        }
      },
          //toggles a task status as completed or not completed.
          toggleTaskStatus: (e) async {
        final tasksCollection = _getTasksCollectionById(
            tasksCollectionId: e.taskPayload.tasksCollectionId);

        final tasks = List.generate(tasksCollection.tasks.length, (i) {
          Task taskAtIndex = tasksCollection.tasks[i];
          return i == e.taskPayload.taskIndex
              ? taskAtIndex.copyWith(completed: !taskAtIndex.completed)
              : taskAtIndex;
        });

        final mutatedTasksCollection = tasksCollection.copyWith(tasks: tasks);

        (await updateAllTasksCollections(
                newTasksCollection: mutatedTasksCollection,
                oldTasksCollection: tasksCollection,
                taskRepository: taskRepository))
            .fold((l) => null, (r) {
          emit(TaskPageState.displayTasksCollections(
              allTasksCollections: _allTasksCollections!));
        });
      },
          // add new task
          addTask: (e) async {
        final todayTasksCollection = getTaskCollectionForToday();

        if (todayTasksCollection != null) {
          final updatedTasksCollection =
              _addNewTaskToTasksCollection(todayTasksCollection);

          //this is an inplace function.
          (await updateAllTasksCollections(
                  taskRepository: taskRepository,
                  newTasksCollection: updatedTasksCollection,
                  oldTasksCollection: todayTasksCollection))
              .fold((l) => null, (r) {
            //UI function that needs to be called after a successful add!
            e.onAdd(
                tasksCollectionId: updatedTasksCollection.id!,
                taskIndex: updatedTasksCollection.tasks.length - 1);

            emit(TaskPageState.displayTasksCollections(
                allTasksCollections: _allTasksCollections!));
          });
        } else {
          final newTasksCollection = _createNewTaskCollection();

          (await addToAllTasksCollections(
                  taskRepository: taskRepository,
                  newTasksCollection: newTasksCollection))
              .fold(
            (l) => null,
            //UI function that needs to be called after a successful add!
            (r) {
              e.onAdd(tasksCollectionId: r.id!, taskIndex: 0);
              addTaskTEC.clear();

              emit(TaskPageState.displayTasksCollections(
                  allTasksCollections: _allTasksCollections!));
            },
          );
        }
        addTaskTEC.clear();
      },
          // delete Task
          deleteTask: (e) async {
        final TasksCollection tasksCollectionToModify = _getTasksCollectionById(
            tasksCollectionId: e.taskPayload.tasksCollectionId);

        final modifiedTasks = List<Task>.from(tasksCollectionToModify.tasks)
          ..removeAt(e.taskPayload.taskIndex);

        //handle if tasksCollection is empty
        //and remove it
        if (modifiedTasks.isEmpty) {
          (await taskRepository.deleteTasksCollection(
                  tasksCollectionId: e.taskPayload.tasksCollectionId))
              .fold(
            (l) => null,
            (r) async {
              _allTasksCollections =
                  List<TasksCollection>.from(_allTasksCollections!)
                    ..remove(tasksCollectionToModify);

              await e.onDelete(
                  taskIndex: e.taskPayload.taskIndex,
                  tasksCollection: tasksCollectionToModify,
                  deleted: true);
              emit(TaskPageState.displayTasksCollections(
                  allTasksCollections: _allTasksCollections!));
            },
          );
        } else {
          final TasksCollection modifiedTasksCollection =
              tasksCollectionToModify.copyWith(tasks: modifiedTasks);

          (await updateAllTasksCollections(
                  taskRepository: taskRepository,
                  newTasksCollection: modifiedTasksCollection,
                  oldTasksCollection: tasksCollectionToModify))
              .fold((l) => null, (r) {
            e.onDelete(
                taskIndex: e.taskPayload.taskIndex,
                tasksCollection: tasksCollectionToModify,
                deleted: false);

            emit(TaskPageState.displayTasksCollections(
                allTasksCollections: _allTasksCollections!));
          });
        }
      },
          // edit Task
          editTask: (e) {
        //editing has to be true before calling this.
        assert(getEditingStatus() == false && taskCache == null,
            'editing must be false and taskCache must be null when trigerring editTask');
        final tasksCollection = _allTasksCollections!
            .findById<TasksCollection>(e.taskPayload.tasksCollectionId);
        final task = tasksCollection!.tasks[e.taskPayload.taskIndex];

        storeTask(task);

        //editing must br true.
        emit(TaskPageState.displayTasksCollections(
            allTasksCollections: _allTasksCollections!,
            editing: true,
            taskPayload: TaskPayload(
                taskIndex: e.taskPayload.taskIndex,
                tasksCollectionId: e.taskPayload.tasksCollectionId)));

        assert(getEditingStatus() == true && taskCache != null,
            'editing must true and taskCache must not be null after trigerring editTask');
      },
          // cancel editing tasks
          cancelEditTask: (e) {
        //editing has to be true before calling this.
        assert(getEditingStatus() == true && taskCache != null,
            'editing must be true and taskCache must not be null when trigerring cancelEditTask');

        emit(TaskPageState.displayTasksCollections(
            allTasksCollections: _allTasksCollections!,
            editing: false,
            taskPayload: TaskPayload(
                tasksCollectionId: e.taskPayload.tasksCollectionId,
                taskIndex: e.taskPayload.taskIndex)));

        viewTaskTEC.text = taskCache!.title;
        clearTaskStore();

        assert(getEditingStatus() == false && taskCache == null,
            'editing must be true and taskCache must be null after trigerring cancelEditTask');
      },
          // save editing task.
          saveEditTask: (e) async {
        assert(getEditingStatus() == true && taskCache != null,
            'Editing must be true and taskCache must not be null after trigerring saveEditTask');

        final tasksCollection = _getTasksCollectionById(
            tasksCollectionId: e.taskPayload.tasksCollectionId);

        final List<Task> tasks = List.from(tasksCollection!.tasks);
        tasks[e.taskPayload.taskIndex] =
            tasks[e.taskPayload.taskIndex].copyWith(title: viewTaskTEC.text);
        final modifiedTasksCollection = tasksCollection.copyWith(tasks: tasks);

        (await updateAllTasksCollections(
                newTasksCollection: modifiedTasksCollection,
                oldTasksCollection: tasksCollection,
                taskRepository: taskRepository))
            .fold((l) => null, (r) {
          emit(TaskPageState.displayTasksCollections(
              allTasksCollections: _allTasksCollections!,
              editing: false,
              taskPayload: TaskPayload(
                  taskIndex: e.taskPayload.taskIndex,
                  tasksCollectionId: e.taskPayload.tasksCollectionId)));

          clearTaskStore();

          assert(getEditingStatus() == false && taskCache == null,
              'editing must be false and taskCache must be null after trigerring saveEditTask');
        });
      },
          //viewing task
          viewTask: (e) {
        assert(getEditingStatus() == false && taskCache == null,
            'Editing must be false and taskCache must not be null before trigerring viewTask');

        final tasksCollection = _getTasksCollectionById(
            tasksCollectionId: e.taskPayload.tasksCollectionId);

        final task = tasksCollection!.tasks[e.taskPayload.taskIndex];

        viewTaskTEC.text = task.title;

        emit(
          TaskPageState.displayTasksCollections(
            allTasksCollections: _allTasksCollections!,
            taskPayload: TaskPayload(
                taskIndex: e.taskPayload.taskIndex,
                tasksCollectionId: e.taskPayload.tasksCollectionId),
          ),
        );
        assert(getEditingStatus() == false && taskCache == null,
            'Editing must be false and taskCache must not be null after trigerring viewTask');
      });
    });
  }

  void clearTaskStore() => taskCache = null;

  bool getEditingStatus() {
    return state.mapOrNull(displayTasksCollections: (e) => e.editing) ?? false;
  }

  void storeTask(Task task) => taskCache = task;

  //Note that this is an implace method!
  Future<Either> updateAllTasksCollections(
      {required TasksCollection newTasksCollection,
      required TasksCollection oldTasksCollection,
      required ITaskRepository taskRepository}) async {
    final updateTasksCollectionFailureOrSuccess =
        await taskRepository.saveTask(tasksCollection: newTasksCollection);

    return updateTasksCollectionFailureOrSuccess.fold((l) => left(l), (r) {
      _allTasksCollections = _replaceInTasksCollectionList(
          allTasksCollections: _allTasksCollections!,
          idToReplace: oldTasksCollection.id!,
          whatToReplace: r);
      return right(r);
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

  TasksCollection _addNewTaskToTasksCollection(TasksCollection whatToAddTo) {
    final newTask = Task(
      title: addTaskTEC.text.isEmpty
          ? lorem(paragraphs: 1, words: 5 + Random().nextInt(20))
          : addTaskTEC.text,
    );
    final modifiedTasksCollection =
        whatToAddTo.copyWith(tasks: [...whatToAddTo.tasks, newTask]);

    return modifiedTasksCollection;
  }

  TasksCollection _createNewTaskCollection() {
    final newTask = Task(
      title: addTaskTEC.text.isEmpty
          ? lorem(paragraphs: 1, words: 5 + Random().nextInt(20))
          : addTaskTEC.text,
    );

    final newTaskCollection =
        TasksCollection(dateTime: DateTime.now(), tasks: [newTask]);

    return newTaskCollection;
  }

  List<TasksCollection>? _allTasksCollections;

  TextEditingController viewTaskTEC = TextEditingController();
  TextEditingController addTaskTEC = TextEditingController();

  Task? taskCache;

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

  Future<Either> addToAllTasksCollections(
      {required ITaskRepository taskRepository,
      required TasksCollection newTasksCollection}) async {
    final saveNewTaskCollectionFailureOrSuccess =
        await taskRepository.saveTask(tasksCollection: newTasksCollection);
    return saveNewTaskCollectionFailureOrSuccess.fold((l) => left(l), (r) {
      _allTasksCollections = _addToTasksCollectionList(
          allTasksCollections: _allTasksCollections!, whatToAdd: r);
      return right(r);
    });
  }

  _getTasksCollectionById({required int tasksCollectionId}) {
    return _allTasksCollections!.findById<TasksCollection>(tasksCollectionId)!;
  }
}
