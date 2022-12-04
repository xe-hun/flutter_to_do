import 'package:isar/isar.dart';

part 'prefs.g.dart';

@collection
class Prefs {
  Prefs(this.saveThemeType);
  Id id = 0;
  @Enumerated(EnumType.ordinal32)
  ThemeType? saveThemeType;
}

enum ThemeType {
  light,
  dark,
}
