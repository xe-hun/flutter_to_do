// enum ThemeType { light, dark }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_objects.freezed.dart';

@freezed
class AppThemeType with _$AppThemeType {
  const factory AppThemeType.light() = _Light;
  const factory AppThemeType.dark() = _Dark;
}
