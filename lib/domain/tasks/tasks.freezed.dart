// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksCollection {
  DateTime get dateTime => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksCollectionCopyWith<TasksCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksCollectionCopyWith<$Res> {
  factory $TasksCollectionCopyWith(
          TasksCollection value, $Res Function(TasksCollection) then) =
      _$TasksCollectionCopyWithImpl<$Res, TasksCollection>;
  @useResult
  $Res call({DateTime dateTime, List<Task> tasks});
}

/// @nodoc
class _$TasksCollectionCopyWithImpl<$Res, $Val extends TasksCollection>
    implements $TasksCollectionCopyWith<$Res> {
  _$TasksCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasksCopyWith<$Res>
    implements $TasksCollectionCopyWith<$Res> {
  factory _$$_TasksCopyWith(_$_Tasks value, $Res Function(_$_Tasks) then) =
      __$$_TasksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, List<Task> tasks});
}

/// @nodoc
class __$$_TasksCopyWithImpl<$Res>
    extends _$TasksCollectionCopyWithImpl<$Res, _$_Tasks>
    implements _$$_TasksCopyWith<$Res> {
  __$$_TasksCopyWithImpl(_$_Tasks _value, $Res Function(_$_Tasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? tasks = null,
  }) {
    return _then(_$_Tasks(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$_Tasks implements _Tasks {
  const _$_Tasks({required this.dateTime, required final List<Task> tasks})
      : _tasks = tasks;

  @override
  final DateTime dateTime;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksCollection(dateTime: $dateTime, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tasks &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, dateTime, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksCopyWith<_$_Tasks> get copyWith =>
      __$$_TasksCopyWithImpl<_$_Tasks>(this, _$identity);
}

abstract class _Tasks implements TasksCollection {
  const factory _Tasks(
      {required final DateTime dateTime,
      required final List<Task> tasks}) = _$_Tasks;

  @override
  DateTime get dateTime;
  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_TasksCopyWith<_$_Tasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Task {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_Task(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Task implements _Task {
  const _$_Task({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'Task(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task({required final String title}) = _$_Task;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
