part of 'task_page_bloc.dart';

@freezed
class TaskPageEvent with _$TaskPageEvent {
  const factory TaskPageEvent.loadTasks() = _LoadTasks;
  const factory TaskPageEvent.toggleTaskStatus({
    required int tasksCollectionId,
    required int taskIndex,
  }) = _ToggleTaskStatus;
  const factory TaskPageEvent.addTask(
      Function({required int tasksCollectionId, required int taskIndex})
          onAdd) = _AddTask;
  const factory TaskPageEvent.deleteTask({
    required int tasksCollectionId,
    required int taskIndex,
    required Function(
            {required TasksCollection tasksCollection,
            required int taskIndex,
            bool? deleted})
        onDelete,
  }) = _DeleteTask;
}
