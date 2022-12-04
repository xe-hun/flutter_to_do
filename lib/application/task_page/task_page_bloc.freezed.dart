// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TasksCollection tasksCollection, Task task)
        toggleTaskStatus,
    required TResult Function() addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult? Function()? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult Function()? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPageEventCopyWith<$Res> {
  factory $TaskPageEventCopyWith(
          TaskPageEvent value, $Res Function(TaskPageEvent) then) =
      _$TaskPageEventCopyWithImpl<$Res, TaskPageEvent>;
}

/// @nodoc
class _$TaskPageEventCopyWithImpl<$Res, $Val extends TaskPageEvent>
    implements $TaskPageEventCopyWith<$Res> {
  _$TaskPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadTasksCopyWith<$Res> {
  factory _$$_LoadTasksCopyWith(
          _$_LoadTasks value, $Res Function(_$_LoadTasks) then) =
      __$$_LoadTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadTasksCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_LoadTasks>
    implements _$$_LoadTasksCopyWith<$Res> {
  __$$_LoadTasksCopyWithImpl(
      _$_LoadTasks _value, $Res Function(_$_LoadTasks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadTasks implements _LoadTasks {
  const _$_LoadTasks();

  @override
  String toString() {
    return 'TaskPageEvent.loadTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TasksCollection tasksCollection, Task task)
        toggleTaskStatus,
    required TResult Function() addTask,
  }) {
    return loadTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult? Function()? addTask,
  }) {
    return loadTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult Function()? addTask,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
  }) {
    return loadTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
  }) {
    return loadTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks(this);
    }
    return orElse();
  }
}

abstract class _LoadTasks implements TaskPageEvent {
  const factory _LoadTasks() = _$_LoadTasks;
}

/// @nodoc
abstract class _$$_ToggleTaskStatusCopyWith<$Res> {
  factory _$$_ToggleTaskStatusCopyWith(
          _$_ToggleTaskStatus value, $Res Function(_$_ToggleTaskStatus) then) =
      __$$_ToggleTaskStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksCollection tasksCollection, Task task});

  $TasksCollectionCopyWith<$Res> get tasksCollection;
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_ToggleTaskStatusCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_ToggleTaskStatus>
    implements _$$_ToggleTaskStatusCopyWith<$Res> {
  __$$_ToggleTaskStatusCopyWithImpl(
      _$_ToggleTaskStatus _value, $Res Function(_$_ToggleTaskStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksCollection = null,
    Object? task = null,
  }) {
    return _then(_$_ToggleTaskStatus(
      tasksCollection: null == tasksCollection
          ? _value.tasksCollection
          : tasksCollection // ignore: cast_nullable_to_non_nullable
              as TasksCollection,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TasksCollectionCopyWith<$Res> get tasksCollection {
    return $TasksCollectionCopyWith<$Res>(_value.tasksCollection, (value) {
      return _then(_value.copyWith(tasksCollection: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_ToggleTaskStatus implements _ToggleTaskStatus {
  const _$_ToggleTaskStatus(
      {required this.tasksCollection, required this.task});

  @override
  final TasksCollection tasksCollection;
  @override
  final Task task;

  @override
  String toString() {
    return 'TaskPageEvent.toggleTaskStatus(tasksCollection: $tasksCollection, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleTaskStatus &&
            (identical(other.tasksCollection, tasksCollection) ||
                other.tasksCollection == tasksCollection) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasksCollection, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleTaskStatusCopyWith<_$_ToggleTaskStatus> get copyWith =>
      __$$_ToggleTaskStatusCopyWithImpl<_$_ToggleTaskStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TasksCollection tasksCollection, Task task)
        toggleTaskStatus,
    required TResult Function() addTask,
  }) {
    return toggleTaskStatus(tasksCollection, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult? Function()? addTask,
  }) {
    return toggleTaskStatus?.call(tasksCollection, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult Function()? addTask,
    required TResult orElse(),
  }) {
    if (toggleTaskStatus != null) {
      return toggleTaskStatus(tasksCollection, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
  }) {
    return toggleTaskStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
  }) {
    return toggleTaskStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (toggleTaskStatus != null) {
      return toggleTaskStatus(this);
    }
    return orElse();
  }
}

abstract class _ToggleTaskStatus implements TaskPageEvent {
  const factory _ToggleTaskStatus(
      {required final TasksCollection tasksCollection,
      required final Task task}) = _$_ToggleTaskStatus;

  TasksCollection get tasksCollection;
  Task get task;
  @JsonKey(ignore: true)
  _$$_ToggleTaskStatusCopyWith<_$_ToggleTaskStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTaskCopyWith<$Res> {
  factory _$$_AddTaskCopyWith(
          _$_AddTask value, $Res Function(_$_AddTask) then) =
      __$$_AddTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddTaskCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_AddTask>
    implements _$$_AddTaskCopyWith<$Res> {
  __$$_AddTaskCopyWithImpl(_$_AddTask _value, $Res Function(_$_AddTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddTask implements _AddTask {
  const _$_AddTask();

  @override
  String toString() {
    return 'TaskPageEvent.addTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TasksCollection tasksCollection, Task task)
        toggleTaskStatus,
    required TResult Function() addTask,
  }) {
    return addTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult? Function()? addTask,
  }) {
    return addTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TasksCollection tasksCollection, Task task)?
        toggleTaskStatus,
    TResult Function()? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TaskPageEvent {
  const factory _AddTask() = _$_AddTask;
}

/// @nodoc
mixin _$TaskPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DisplayTasksCollections value)
        displayTasksCollections,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPageStateCopyWith<$Res> {
  factory $TaskPageStateCopyWith(
          TaskPageState value, $Res Function(TaskPageState) then) =
      _$TaskPageStateCopyWithImpl<$Res, TaskPageState>;
}

/// @nodoc
class _$TaskPageStateCopyWithImpl<$Res, $Val extends TaskPageState>
    implements $TaskPageStateCopyWith<$Res> {
  _$TaskPageStateCopyWithImpl(this._value, this._then);

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
    extends _$TaskPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TaskPageState.initial()';
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
    required TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult Function()? loadFailure,
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
    required TResult Function(_DisplayTasksCollections value)
        displayTasksCollections,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskPageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DisplayTasksCollectionsCopyWith<$Res> {
  factory _$$_DisplayTasksCollectionsCopyWith(_$_DisplayTasksCollections value,
          $Res Function(_$_DisplayTasksCollections) then) =
      __$$_DisplayTasksCollectionsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TasksCollection> tasksCollections,
      TextEditingController addTaskTEC});
}

/// @nodoc
class __$$_DisplayTasksCollectionsCopyWithImpl<$Res>
    extends _$TaskPageStateCopyWithImpl<$Res, _$_DisplayTasksCollections>
    implements _$$_DisplayTasksCollectionsCopyWith<$Res> {
  __$$_DisplayTasksCollectionsCopyWithImpl(_$_DisplayTasksCollections _value,
      $Res Function(_$_DisplayTasksCollections) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksCollections = null,
    Object? addTaskTEC = null,
  }) {
    return _then(_$_DisplayTasksCollections(
      tasksCollections: null == tasksCollections
          ? _value._tasksCollections
          : tasksCollections // ignore: cast_nullable_to_non_nullable
              as List<TasksCollection>,
      addTaskTEC: null == addTaskTEC
          ? _value.addTaskTEC
          : addTaskTEC // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_DisplayTasksCollections implements _DisplayTasksCollections {
  const _$_DisplayTasksCollections(
      {required final List<TasksCollection> tasksCollections,
      required this.addTaskTEC})
      : _tasksCollections = tasksCollections;

  final List<TasksCollection> _tasksCollections;
  @override
  List<TasksCollection> get tasksCollections {
    if (_tasksCollections is EqualUnmodifiableListView)
      return _tasksCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasksCollections);
  }

  @override
  final TextEditingController addTaskTEC;

  @override
  String toString() {
    return 'TaskPageState.displayTasksCollections(tasksCollections: $tasksCollections, addTaskTEC: $addTaskTEC)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayTasksCollections &&
            const DeepCollectionEquality()
                .equals(other._tasksCollections, _tasksCollections) &&
            (identical(other.addTaskTEC, addTaskTEC) ||
                other.addTaskTEC == addTaskTEC));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tasksCollections), addTaskTEC);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisplayTasksCollectionsCopyWith<_$_DisplayTasksCollections>
      get copyWith =>
          __$$_DisplayTasksCollectionsCopyWithImpl<_$_DisplayTasksCollections>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) {
    return displayTasksCollections(tasksCollections, addTaskTEC);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) {
    return displayTasksCollections?.call(tasksCollections, addTaskTEC);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (displayTasksCollections != null) {
      return displayTasksCollections(tasksCollections, addTaskTEC);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DisplayTasksCollections value)
        displayTasksCollections,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return displayTasksCollections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return displayTasksCollections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (displayTasksCollections != null) {
      return displayTasksCollections(this);
    }
    return orElse();
  }
}

abstract class _DisplayTasksCollections implements TaskPageState {
  const factory _DisplayTasksCollections(
          {required final List<TasksCollection> tasksCollections,
          required final TextEditingController addTaskTEC}) =
      _$_DisplayTasksCollections;

  List<TasksCollection> get tasksCollections;
  TextEditingController get addTaskTEC;
  @JsonKey(ignore: true)
  _$$_DisplayTasksCollectionsCopyWith<_$_DisplayTasksCollections>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$TaskPageStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString() {
    return 'TaskPageState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> tasksCollections,
            TextEditingController addTaskTEC)?
        displayTasksCollections,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DisplayTasksCollections value)
        displayTasksCollections,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DisplayTasksCollections value)? displayTasksCollections,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TaskPageState {
  const factory _LoadFailure() = _$_LoadFailure;
}
