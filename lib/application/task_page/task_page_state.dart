part of 'task_page_bloc.dart';

@freezed
class TaskPageState with _$TaskPageState {
  const TaskPageState._();
  const factory TaskPageState.initial() = _Initial;

  const factory TaskPageState.displayTasksCollections({
    required List<TasksCollection> allTasksCollections,
    TextEditingController? addTaskTEC,

    ///if editPayload is not null, the user is editing
    EditPayload? editPayload,
  }) = _DisplayTasksCollections;
  const factory TaskPageState.loadFailure() = _LoadFailure;
}

@freezed
class EditPayload with _$EditPayload {
  const factory EditPayload({
    required int tasksCollectionId,
    required int taskIndex,
  }) = _EditPayload;
}
