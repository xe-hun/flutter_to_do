part of 'task_page_bloc.dart';

// @freezed
// class TaskPageInitial with _$TaskPageInitial {
//   const TaskPageInitial();
// }

// @freezed
// class TaskPageDisplayTaskCollections with _$TaskPageDisplayTaskCollections {
//   const TaskPageDisplayTaskCollections({  required List<TasksCollection> allTasksCollections,
//     required TextEditingController addTaskTEC,});
// }

class TaskPageState with _$TaskPageState {
  const factory TaskPageState.initial() = _Initial;
  const factory TaskPageState.displayTasksCollections({
    required List<TasksCollection> allTasksCollections,
    required TextEditingController addTaskTEC,
  }) = _DisplayTasksCollections;
  const factory TaskPageState.loadFailure() = _LoadFailure;
}
