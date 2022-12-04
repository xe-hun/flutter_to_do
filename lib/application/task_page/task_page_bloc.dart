import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/i_repository/i_task_repository.dart';
import 'package:flutter_to_do/domain/tasks/tasks.dart';
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
        if (tasksCollections != null) {
          emit(TaskPageState.displayTasksCollections(
              addTaskTEC: addTaskTEC, tasksCollections: tasksCollections!));
        } else {
          final getAllTasksFailureOrSuccess =
              await taskRepository.getAllTasks();
          getAllTasksFailureOrSuccess.fold(
            (l) => emit(const TaskPageState.loadFailure()),
            (r) {
              tasksCollections = r;

              emit(TaskPageState.displayTasksCollections(
                  addTaskTEC: addTaskTEC, tasksCollections: tasksCollections!));
            },
          );
        }
      }, toggleTaskStatus: (e) {
        final tasksCollection =
            tasksCollections!.firstWhere((el) => el == e.tasksCollection);

        final tasks = tasksCollection.tasks.map((task) {
          return task == e.task
              ? e.task.copyWith(completed: !e.task.completed)
              : task;
        }).toList();

        final tasksCollectionCopy = tasksCollection.copyWith(tasks: tasks);

        tasksCollections = tasksCollections!
            .map(((e) => e == tasksCollection ? tasksCollectionCopy : e))
            .toList();

        emit(TaskPageState.displayTasksCollections(
            addTaskTEC: addTaskTEC, tasksCollections: tasksCollections!));
      }, addTask: (e) async {
        final todayTasksCollection = getTaskCollectionForToday();

        if (todayTasksCollection != null) {
          final updatedTasksCollection =
              updateTasksCollectionEntry(todayTasksCollection);

          final updateTaskFailureOrSuccess = await taskRepository.saveTask(
              tasksCollection: updatedTasksCollection);
          updateTaskFailureOrSuccess.fold((l) => print('failed to save'), (r) {
            tasksCollections = tasksCollections!
                .map((e) => e == todayTasksCollection ? r : e)
                .toList();
          });
        } else {
          final newTasksCollection = addNewTaskCollectionEntry();
          final saveNewTaskFailureOrSuccess = await taskRepository.saveTask(
              tasksCollection: newTasksCollection);
          saveNewTaskFailureOrSuccess.fold((l) => print('failed to save'), (r) {
            tasksCollections = [...tasksCollections!, r];
          });
        }

        addTaskTEC.clear();

        emit(TaskPageState.displayTasksCollections(
            addTaskTEC: addTaskTEC, tasksCollections: tasksCollections!));
      });
    });
  }

  TasksCollection updateTasksCollectionEntry(
      TasksCollection todayTasksCollection) {
    final newTask = Task(
      title: addTaskTEC.text,
    );
    final modifiedTasksCollection = todayTasksCollection
        .copyWith(tasks: [...todayTasksCollection.tasks, newTask]);

    return modifiedTasksCollection;
  }

  TasksCollection addNewTaskCollectionEntry() {
    final newTask = Task(
      title: addTaskTEC.text,
    );

    final newTaskCollection =
        TasksCollection(dateTime: DateTime.now(), tasks: [newTask]);

    return newTaskCollection;
  }

  // TasksCollection getMutatedTasksCollections() {
  //   // final todayTasksCollection = getTaskCollectionForToday();

  //   final newTask = Task(
  //     title: addTaskTEC.text,
  //   );

  //   if (todayTasksCollection != null) {
  //     final modifiedTasksCollection = todayTasksCollection
  //         .copyWith(tasks: [...todayTasksCollection.tasks, newTask]);

  //     tasksCollections = tasksCollections!
  //         .map((e) => e == todayTasksCollection ? modifiedTasksCollection : e)
  //         .toList();

  //     return modifiedTasksCollection;

  //     // taskRepository.saveTask(tasksCollection: modifiedTasksCollection);
  //     //save it back to the storage

  //   } else {
  //     // final newTaskCollection =
  //     //     TasksCollection(dateTime: DateTime.now(), tasks: [newTask]);
  //     // tasksCollections = [...tasksCollections!, newTaskCollection];

  //     // return newTaskCollection;

  //     //save the new task collection to storage.
  //     // taskRepository.saveTask(tasksCollection: newTaskCollection);
  //   }
  // }

  List<TasksCollection>? tasksCollections;

  TextEditingController addTaskTEC = TextEditingController();

  TasksCollection? getTaskCollectionForToday() {
    try {
      return tasksCollections!.firstWhere(
        (element) =>
            element.dateTime.whichDay.toString().toLowerCase() == 'today',
      );
    } catch (e) {
      return null;
    }
  }
}
