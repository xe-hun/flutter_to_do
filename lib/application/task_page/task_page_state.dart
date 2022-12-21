part of 'task_page_bloc.dart';

@freezed
class TaskPageState with _$TaskPageState {
  const TaskPageState._();
  const factory TaskPageState.initial() = _Initial;

  const factory TaskPageState.displayTasksCollections({
    required List<TasksCollection> allTasksCollections,

    ///if taskPayload is not null, the user is editing
    TaskPayload? taskPayload,
    @Default(false) bool editing,
  }) = _DisplayTasksCollections;
  const factory TaskPageState.loadFailure() = _LoadFailure;
}

@freezed
class TaskPayload with _$TaskPayload {
  const factory TaskPayload({
    required int tasksCollectionId,
    required int taskIndex,
  }) = _TaskPayload;
}
