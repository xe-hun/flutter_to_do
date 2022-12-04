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
          emit(TaskPageState.loadSuccess(tasksCollections: tasksCollections!));
        } else {
          final getAllTasksFailureOrSuccess =
              await taskRepository.getAllTasks();
          getAllTasksFailureOrSuccess.fold(
            (l) => emit(const TaskPageState.loadFailure()),
            (r) => emit(TaskPageState.loadSuccess(
                tasksCollections: r
                    .map((e) => TasksCollection.fromStore(prefTask: e))
                    .toList())),
          );
        }
      });
    });
  }
  List<TasksCollection>? tasksCollections;
}
