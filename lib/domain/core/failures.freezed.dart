// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) storageFailure,
    required TResult Function(T failedValue) noItemInStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? storageFailure,
    TResult? Function(T failedValue)? noItemInStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? storageFailure,
    TResult Function(T failedValue)? noItemInStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StorageFailure<T> value) storageFailure,
    required TResult Function(_NoItemInStorage<T> value) noItemInStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StorageFailure<T> value)? storageFailure,
    TResult? Function(_NoItemInStorage<T> value)? noItemInStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StorageFailure<T> value)? storageFailure,
    TResult Function(_NoItemInStorage<T> value)? noItemInStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<T, Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res, Failure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res, $Val extends Failure<T>>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StorageFailureCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$_StorageFailureCopyWith(_$_StorageFailure<T> value,
          $Res Function(_$_StorageFailure<T>) then) =
      __$$_StorageFailureCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_StorageFailureCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$_StorageFailure<T>>
    implements _$$_StorageFailureCopyWith<T, $Res> {
  __$$_StorageFailureCopyWithImpl(
      _$_StorageFailure<T> _value, $Res Function(_$_StorageFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_StorageFailure<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_StorageFailure<T> implements _StorageFailure<T> {
  const _$_StorageFailure({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'Failure<$T>.storageFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageFailure<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageFailureCopyWith<T, _$_StorageFailure<T>> get copyWith =>
      __$$_StorageFailureCopyWithImpl<T, _$_StorageFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) storageFailure,
    required TResult Function(T failedValue) noItemInStorage,
  }) {
    return storageFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? storageFailure,
    TResult? Function(T failedValue)? noItemInStorage,
  }) {
    return storageFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? storageFailure,
    TResult Function(T failedValue)? noItemInStorage,
    required TResult orElse(),
  }) {
    if (storageFailure != null) {
      return storageFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StorageFailure<T> value) storageFailure,
    required TResult Function(_NoItemInStorage<T> value) noItemInStorage,
  }) {
    return storageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StorageFailure<T> value)? storageFailure,
    TResult? Function(_NoItemInStorage<T> value)? noItemInStorage,
  }) {
    return storageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StorageFailure<T> value)? storageFailure,
    TResult Function(_NoItemInStorage<T> value)? noItemInStorage,
    required TResult orElse(),
  }) {
    if (storageFailure != null) {
      return storageFailure(this);
    }
    return orElse();
  }
}

abstract class _StorageFailure<T> implements Failure<T> {
  const factory _StorageFailure({required final T failedValue}) =
      _$_StorageFailure<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_StorageFailureCopyWith<T, _$_StorageFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoItemInStorageCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$_NoItemInStorageCopyWith(_$_NoItemInStorage<T> value,
          $Res Function(_$_NoItemInStorage<T>) then) =
      __$$_NoItemInStorageCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_NoItemInStorageCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$_NoItemInStorage<T>>
    implements _$$_NoItemInStorageCopyWith<T, $Res> {
  __$$_NoItemInStorageCopyWithImpl(
      _$_NoItemInStorage<T> _value, $Res Function(_$_NoItemInStorage<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_NoItemInStorage<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_NoItemInStorage<T> implements _NoItemInStorage<T> {
  const _$_NoItemInStorage({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'Failure<$T>.noItemInStorage(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoItemInStorage<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoItemInStorageCopyWith<T, _$_NoItemInStorage<T>> get copyWith =>
      __$$_NoItemInStorageCopyWithImpl<T, _$_NoItemInStorage<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) storageFailure,
    required TResult Function(T failedValue) noItemInStorage,
  }) {
    return noItemInStorage(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? storageFailure,
    TResult? Function(T failedValue)? noItemInStorage,
  }) {
    return noItemInStorage?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? storageFailure,
    TResult Function(T failedValue)? noItemInStorage,
    required TResult orElse(),
  }) {
    if (noItemInStorage != null) {
      return noItemInStorage(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StorageFailure<T> value) storageFailure,
    required TResult Function(_NoItemInStorage<T> value) noItemInStorage,
  }) {
    return noItemInStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StorageFailure<T> value)? storageFailure,
    TResult? Function(_NoItemInStorage<T> value)? noItemInStorage,
  }) {
    return noItemInStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StorageFailure<T> value)? storageFailure,
    TResult Function(_NoItemInStorage<T> value)? noItemInStorage,
    required TResult orElse(),
  }) {
    if (noItemInStorage != null) {
      return noItemInStorage(this);
    }
    return orElse();
  }
}

abstract class _NoItemInStorage<T> implements Failure<T> {
  const factory _NoItemInStorage({required final T failedValue}) =
      _$_NoItemInStorage<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_NoItemInStorageCopyWith<T, _$_NoItemInStorage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
