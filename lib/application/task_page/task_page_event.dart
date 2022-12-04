part of 'task_page_bloc.dart';

@freezed
class TaskPageEvent with _$TaskPageEvent {
  const factory TaskPageEvent.loadTasks() = _LoadTasks;
}
