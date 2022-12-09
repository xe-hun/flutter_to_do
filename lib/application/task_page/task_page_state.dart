part of 'task_page_bloc.dart';

@freezed
class TaskPageState with _$TaskPageState {
  const factory TaskPageState.initial() = _Initial;
  const factory TaskPageState.displayTasksCollections(
      {required List<TasksCollection> allTasksCollections,
      required TextEditingController addTaskTEC,
      @Default(false) bool editing}) = _DisplayTasksCollections;
  const factory TaskPageState.loadFailure() = _LoadFailure;
}
