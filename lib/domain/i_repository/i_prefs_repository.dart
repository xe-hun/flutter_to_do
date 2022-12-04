import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:flutter_to_do/schema/prefs.dart' as prefs;

abstract class IPrefsRepository {
  Future<Either<Failure, prefs.Prefs>> getAppPrefs();
  Future<Either<Failure, Unit>> saveAppPrefs(prefs.ThemeType themeType);
}
