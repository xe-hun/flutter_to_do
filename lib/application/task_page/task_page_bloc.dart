import 'package:bloc/bloc.dart';
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
              tasksCollections: tasksCollections!));
        } else {
          final getAllTasksFailureOrSuccess =
              await taskRepository.getAllTasks();
          getAllTasksFailureOrSuccess.fold(
            (l) => emit(const TaskPageState.loadFailure()),
            (r) {
              tasksCollections =
                  r.map((e) => TasksCollection.fromStore(prefTask: e)).toList();
              emit(TaskPageState.displayTasksCollections(
                  tasksCollections: tasksCollections!));
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
            tasksCollections: tasksCollections!));
      });
    });
  }
  List<TasksCollection>? tasksCollections;

  // void toggleCompleted(Task task) {
  //   task.completed = !task.completed;
  // }
}
