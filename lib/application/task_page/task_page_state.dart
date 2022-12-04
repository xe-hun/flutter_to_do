part of 'task_page_bloc.dart';

@freezed
class TaskPageState with _$TaskPageState {
  const factory TaskPageState.initial() = _Initial;
  const factory TaskPageState.loadSuccess(
      {required List<TasksCollection> tasksCollections}) = _LoadSuccess;
  const factory TaskPageState.loadFailure() = _LoadFailure;
}
