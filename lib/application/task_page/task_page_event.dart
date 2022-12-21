part of 'task_page_bloc.dart';

@freezed
class TaskPageEvent with _$TaskPageEvent {
  const factory TaskPageEvent.loadTasks() = _LoadTasks;
  const factory TaskPageEvent.toggleTaskStatus({
    required TaskPayload taskPayload,
  }) = _ToggleTaskStatus;
  const factory TaskPageEvent.addTask(
      Function({required int tasksCollectionId, required int taskIndex})
          onAdd) = _AddTask;
  const factory TaskPageEvent.deleteTask({
    required TaskPayload taskPayload,
    required Function(
            {required TasksCollection tasksCollection,
            required int taskIndex,
            bool? deleted})
        onDelete,
  }) = _DeleteTask;

  const factory TaskPageEvent.editTask({
    required TaskPayload taskPayload,
  }) = _EditTask;

  const factory TaskPageEvent.viewTask({
    required TaskPayload taskPayload,
  }) = _ViewTask;

  const factory TaskPageEvent.cancelEditTask(
      {required TaskPayload taskPayload}) = _CancelEditTask;

  const factory TaskPageEvent.saveEditTask({required TaskPayload taskPayload}) =
      _SaveEditTask;
}
