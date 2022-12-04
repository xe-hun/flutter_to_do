part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;
  const factory ThemeState.dark() = _Dark;
  const factory ThemeState.light() = _Light;
}
