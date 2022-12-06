import 'package:isar/isar.dart';

part 'tasks_collection.g.dart';

@collection
class TasksCollection {
  TasksCollection({required this.tasks, required this.dateTime, this.id});
  Id? id;
  DateTime? dateTime;
  List<Task>? tasks;
}

@embedded
class Task {
  String? title;
  bool? completed;
}
