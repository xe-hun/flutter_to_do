import 'package:intl/intl.dart';

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
      return DateFormat('dd MMM yyyy').format(this);
    }
  }
}

extension ListX on List {
  T? findById<T>(int id) {
    try {
      return firstWhere((element) => element.id == id);
    } on NoSuchMethodError catch (_) {
      throw 'Object contained in List must have property -> id';
    } catch (e) {
      return null;
    }
  }

  T? getOrNull<T>(int index) {
    try {
      final s = this[index];
      return s;
    } on RangeError catch (_) {
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
