import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/i_repository/i_prefs_repository.dart';
import 'package:flutter_to_do/infrastructure/data_source/save_box.dart';
import 'package:flutter_to_do/schema/prefs.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPrefsRepository)
class PrefsRepository implements IPrefsRepository {
  PrefsRepository(this.datasource);
  SaveBox datasource;

  @override
  Future<Either<Failure, Prefs>> getAppPrefs() async {
    try {
      final result = await datasource.read<Prefs, int>(key: 0);
      if (result == null) {
        return const Left(Failure.noItemInStorage(failedValue: null));
      }
      return Right(result);
    } catch (e) {
      return Left(Failure.storageFailure(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveAppPrefs(ThemeType themeType) async {
    try {
      await datasource.save(object: Prefs(themeType));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.storageFailure(failedValue: e.toString()));
    }
  }
}




  // void saveThemePref(
  //     {required SaveBox saveBox, required SaveThemeType saveThemeType}) {
  //   saveBox.save(object: Prefs(saveThemeType));
  // }

  // Future<SaveThemeType?> readThemePref({
  //   required SaveBox saveBox,
  // }) async {
  //   return (await saveBox.read<Prefs, int>(key: 0))?.saveThemeType;
  // }
