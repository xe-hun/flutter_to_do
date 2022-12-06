import 'package:flutter_to_do/schema/tasks_collection.dart' as pref;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_collection.freezed.dart';

@freezed
class TasksCollection with _$TasksCollection {
  const TasksCollection._();

  const factory TasksCollection(
      {required DateTime dateTime,
      required List<Task> tasks,
      int? id}) = _TasksCollection;

  factory TasksCollection.fromPref(pref.TasksCollection prefTasksCollection) {
    return TasksCollection(
        id: prefTasksCollection.id,
        dateTime: prefTasksCollection.dateTime!,
        tasks:
            prefTasksCollection.tasks!.map((e) => Task.fromStore(e)).toList());
  }

  pref.TasksCollection toPref() {
    return pref.TasksCollection(
        tasks: tasks.map((e) => e.toPref()).toList(),
        dateTime: dateTime,
        id: id);
  }
}

@freezed
class Task with _$Task {
  const Task._();

  const factory Task({required String title, @Default(false) bool completed}) =
      _Task;

  factory Task.fromStore(pref.Task prefTask) {
    return Task(title: prefTask.title!, completed: prefTask.completed!);
  }

  pref.Task toPref() {
    return pref.Task()
      ..title = title
      ..completed = completed;
  }
}
