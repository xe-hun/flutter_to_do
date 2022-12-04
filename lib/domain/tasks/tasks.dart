import 'package:flutter_to_do/schema/tasks.dart' as pref;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks.freezed.dart';

@freezed
class TasksCollection with _$TasksCollection {
  const factory TasksCollection(
      {required DateTime dateTime, required List<Task> tasks}) = _Tasks;

  factory TasksCollection.fromStore({required pref.TasksCollection prefTask}) {
    return TasksCollection(
        dateTime: prefTask.dateTime!,
        tasks: prefTask.tasks!.map((e) => Task.fromStore(e)).toList());
  }
}

@freezed
class Task with _$Task {
  const factory Task({required String title, @Default(false) bool completed}) =
      _Task;

  factory Task.fromStore(pref.Task prefTask) {
    return Task(title: prefTask.title!, completed: prefTask.completed!);
  }
}
