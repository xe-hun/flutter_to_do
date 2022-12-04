// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_to_do/application/landing_page/landing_page_bloc.dart'
    as _i5;
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart'
    as _i11;
import 'package:flutter_to_do/application/theme/theme_bloc.dart' as _i12;
import 'package:flutter_to_do/domain/i_repository/i_prefs_repository.dart'
    as _i7;
import 'package:flutter_to_do/domain/i_repository/i_task_repository.dart'
    as _i9;
import 'package:flutter_to_do/infrastructure/data_source/dummy_datasource.dart'
    as _i3;
import 'package:flutter_to_do/infrastructure/data_source/save_box.dart' as _i6;
import 'package:flutter_to_do/infrastructure/repository/prefs_repository.dart'
    as _i8;
import 'package:flutter_to_do/infrastructure/repository/task_repository.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;

import 'modules.dart' as _i13;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.DummyDatasource>(() => _i3.DummyDatasource());
  await gh.singletonAsync<_i4.Isar>(
    () => registerModule.isar,
    preResolve: true,
  );
  gh.lazySingleton<_i5.LandingPageBloc>(() => _i5.LandingPageBloc());
  gh.lazySingleton<_i6.SaveBox>(() => _i6.SaveBoxImpl(gh<_i4.Isar>()));
  gh.lazySingleton<_i7.IPrefsRepository>(
      () => _i8.PrefsRepository(gh<_i6.SaveBox>()));
  gh.lazySingleton<_i9.ITaskRepository>(
      () => _i10.TaskRepository(gh<_i6.SaveBox>()));
  gh.lazySingleton<_i11.TaskPageBloc>(
      () => _i11.TaskPageBloc(gh<_i9.ITaskRepository>()));
  gh.factory<_i12.ThemeBloc>(() => _i12.ThemeBloc(gh<_i7.IPrefsRepository>()));
  return getIt;
}

class _$RegisterModule extends _i13.RegisterModule {}
