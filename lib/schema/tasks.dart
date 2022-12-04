import 'package:isar/isar.dart';

part 'tasks.g.dart';

@collection
class TasksCollection {
  TasksCollection({this.tasks, this.dateTime});
  Id id = Isar.autoIncrement;
  DateTime? dateTime;
  List<Task>? tasks;
}

@embedded
class Task {
  String? title;
}
