import 'package:bloc/bloc.dart';
import 'package:flutter_to_do/application/core/ui_objects.dart';
import 'package:flutter_to_do/domain/i_repository/i_prefs_repository.dart';
import 'package:flutter_to_do/schema/prefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(IPrefsRepository prefsRepository)
      : super(const ThemeState.initial()) {
    on<ThemeEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          final getAppPrefsFailureOrSuccess =
              await prefsRepository.getAppPrefs();

          getAppPrefsFailureOrSuccess
              .fold((l) => emit(const ThemeState.light()), (prefs) {
            switch (prefs.saveThemeType) {
              case ThemeType.light:
                emit(const ThemeState.light());
                break;
              case ThemeType.dark:
                emit(const ThemeState.dark());
                break;
              default:
                emit(const ThemeState.light());
                break;
            }
          });
        },
        changeTheme: (e) async {
          await e.themeType.map(
            light: (value) async {
              emit(const ThemeState.light());
              final saveAppPrefsFailureOrSuccess =
                  await prefsRepository.saveAppPrefs(ThemeType.light);

              if (saveAppPrefsFailureOrSuccess.isLeft()) {
                //do failure stuffs
              }
            },
            dark: (value) async {
              emit(const ThemeState.dark());
              final saveAppPrefsFailureOrSuccess =
                  await prefsRepository.saveAppPrefs(ThemeType.dark);

              if (saveAppPrefsFailureOrSuccess.isLeft()) {
                //do failure stuffs
              }
            },
          );
        },
      );
    });
  }
}
