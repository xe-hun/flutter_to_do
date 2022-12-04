// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppThemeType themeType) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppThemeType themeType)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppThemeType themeType)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ThemeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppThemeType themeType) changeTheme,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppThemeType themeType)? changeTheme,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppThemeType themeType)? changeTheme,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ThemeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeThemeCopyWith<$Res> {
  factory _$$_ChangeThemeCopyWith(
          _$_ChangeTheme value, $Res Function(_$_ChangeTheme) then) =
      __$$_ChangeThemeCopyWithImpl<$Res>;
  @useResult
  $Res call({AppThemeType themeType});

  $AppThemeTypeCopyWith<$Res> get themeType;
}

/// @nodoc
class __$$_ChangeThemeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_ChangeTheme>
    implements _$$_ChangeThemeCopyWith<$Res> {
  __$$_ChangeThemeCopyWithImpl(
      _$_ChangeTheme _value, $Res Function(_$_ChangeTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
  }) {
    return _then(_$_ChangeTheme(
      null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppThemeTypeCopyWith<$Res> get themeType {
    return $AppThemeTypeCopyWith<$Res>(_value.themeType, (value) {
      return _then(_value.copyWith(themeType: value));
    });
  }
}

/// @nodoc

class _$_ChangeTheme implements _ChangeTheme {
  const _$_ChangeTheme(this.themeType);

  @override
  final AppThemeType themeType;

  @override
  String toString() {
    return 'ThemeEvent.changeTheme(themeType: $themeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTheme &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      __$$_ChangeThemeCopyWithImpl<_$_ChangeTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppThemeType themeType) changeTheme,
  }) {
    return changeTheme(themeType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppThemeType themeType)? changeTheme,
  }) {
    return changeTheme?.call(themeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppThemeType themeType)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(themeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements ThemeEvent {
  const factory _ChangeTheme(final AppThemeType themeType) = _$_ChangeTheme;

  AppThemeType get themeType;
  @JsonKey(ignore: true)
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dark,
    required TResult Function() light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dark,
    TResult? Function()? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dark value) dark,
    required TResult Function(_Light value) light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dark value)? dark,
    TResult? Function(_Light value)? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dark value)? dark,
    TResult Function(_Light value)? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ThemeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dark value) dark,
    required TResult Function(_Light value) light,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dark value)? dark,
    TResult? Function(_Light value)? light,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dark value)? dark,
    TResult Function(_Light value)? light,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ThemeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DarkCopyWith<$Res> {
  factory _$$_DarkCopyWith(_$_Dark value, $Res Function(_$_Dark) then) =
      __$$_DarkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DarkCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Dark>
    implements _$$_DarkCopyWith<$Res> {
  __$$_DarkCopyWithImpl(_$_Dark _value, $Res Function(_$_Dark) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Dark implements _Dark {
  const _$_Dark();

  @override
  String toString() {
    return 'ThemeState.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Dark);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dark value) dark,
    required TResult Function(_Light value) light,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dark value)? dark,
    TResult? Function(_Light value)? light,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dark value)? dark,
    TResult Function(_Light value)? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class _Dark implements ThemeState {
  const factory _Dark() = _$_Dark;
}

/// @nodoc
abstract class _$$_LightCopyWith<$Res> {
  factory _$$_LightCopyWith(_$_Light value, $Res Function(_$_Light) then) =
      __$$_LightCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LightCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Light>
    implements _$$_LightCopyWith<$Res> {
  __$$_LightCopyWithImpl(_$_Light _value, $Res Function(_$_Light) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Light implements _Light {
  const _$_Light();

  @override
  String toString() {
    return 'ThemeState.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Light);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dark value) dark,
    required TResult Function(_Light value) light,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dark value)? dark,
    TResult? Function(_Light value)? light,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dark value)? dark,
    TResult Function(_Light value)? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class _Light implements ThemeState {
  const factory _Light() = _$_Light;
}
