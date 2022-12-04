part of 'task_page_bloc.dart';

@freezed
class TaskPageEvent with _$TaskPageEvent {
  const factory TaskPageEvent.loadTasks() = _LoadTasks;
  const factory TaskPageEvent.toggleTaskStatus({
    required TasksCollection tasksCollection,
    required Task task,
  }) = _ToggleTaskStatus;
}
