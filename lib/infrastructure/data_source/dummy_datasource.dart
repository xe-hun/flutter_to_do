import 'package:flutter_to_do/schema/tasks.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DummyDatasource {
  TasksCollection tasksCollection1 =
      TasksCollection(dateTime: DateTime.now(), tasks: [
    Task()
      ..title = lorem(paragraphs: 1, words: 5)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 1, words: 12)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 2, words: 21)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 1, words: 12)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 1, words: 4)
      ..completed = false,
  ]);

  TasksCollection tasksCollection2 = TasksCollection(
      dateTime: DateTime.now().subtract(const Duration(hours: 24)),
      tasks: [
        Task()
          ..title = lorem(paragraphs: 1, words: 5)
          ..completed = false,
        Task()
          ..title = lorem(paragraphs: 1, words: 12)
          ..completed = false,
        Task()
          ..title = lorem(paragraphs: 2, words: 21)
          ..completed = false,
        Task()
          ..title = lorem(paragraphs: 1, words: 12)
          ..completed = false,
        Task()
          ..title = lorem(paragraphs: 1, words: 4)
          ..completed = false,
      ]);

  TasksCollection tasksCollection3 =
      TasksCollection(dateTime: DateTime.now(), tasks: [
    Task()
      ..title = lorem(paragraphs: 2, words: 60)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 1, words: 20)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 3, words: 60)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 1, words: 12)
      ..completed = false,
    Task()
      ..title = lorem(paragraphs: 2, words: 43)
      ..completed = false,
  ]);
}
