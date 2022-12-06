import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';

extension DateTimeX on DateTime {
  String get whichDay {
    DateTime today = DateTime.now();
    DateTime tomorrow = today.add(Duration(hours: 24 - today.hour));
    DateTime yesterday = tomorrow.subtract(const Duration(hours: 48));
    if (day == today.day && month == today.month && year == today.year) {
      return 'today';
    } else if (day == tomorrow.day &&
        month == tomorrow.month &&
        year == tomorrow.year) {
      return 'tomorrow';
    } else if (day == yesterday.day &&
        month == yesterday.month &&
        year == yesterday.year) {
      return 'yesterday';
    } else {
      return toIso8601String();
    }
  }
}

extension ListX<T> on List {
  T findById(int id) {
    const TasksCollection? t = null;
    if (t is T) {
      return firstWhere((element) => element.id == id);
    } else {
      throw 'only Lists storing $TasksCollection can may access this extension';
    }
  }
}
