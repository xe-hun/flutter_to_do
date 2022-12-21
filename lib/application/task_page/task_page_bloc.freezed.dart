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
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
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
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return loadTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return loadTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
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
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return loadTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return loadTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
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
  $Res call({TaskPayload taskPayload});

  $TaskPayloadCopyWith<$Res> get taskPayload;
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
    Object? taskPayload = null,
  }) {
    return _then(_$_ToggleTaskStatus(
      taskPayload: null == taskPayload
          ? _value.taskPayload
          : taskPayload // ignore: cast_nullable_to_non_nullable
              as TaskPayload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskPayloadCopyWith<$Res> get taskPayload {
    return $TaskPayloadCopyWith<$Res>(_value.taskPayload, (value) {
      return _then(_value.copyWith(taskPayload: value));
    });
  }
}

/// @nodoc

class _$_ToggleTaskStatus implements _ToggleTaskStatus {
  const _$_ToggleTaskStatus({required this.taskPayload});

  @override
  final TaskPayload taskPayload;

  @override
  String toString() {
    return 'TaskPageEvent.toggleTaskStatus(taskPayload: $taskPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleTaskStatus &&
            (identical(other.taskPayload, taskPayload) ||
                other.taskPayload == taskPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleTaskStatusCopyWith<_$_ToggleTaskStatus> get copyWith =>
      __$$_ToggleTaskStatusCopyWithImpl<_$_ToggleTaskStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return toggleTaskStatus(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return toggleTaskStatus?.call(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) {
    if (toggleTaskStatus != null) {
      return toggleTaskStatus(taskPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return toggleTaskStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return toggleTaskStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
    required TResult orElse(),
  }) {
    if (toggleTaskStatus != null) {
      return toggleTaskStatus(this);
    }
    return orElse();
  }
}

abstract class _ToggleTaskStatus implements TaskPageEvent {
  const factory _ToggleTaskStatus({required final TaskPayload taskPayload}) =
      _$_ToggleTaskStatus;

  TaskPayload get taskPayload;
  @JsonKey(ignore: true)
  _$$_ToggleTaskStatusCopyWith<_$_ToggleTaskStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTaskCopyWith<$Res> {
  factory _$$_AddTaskCopyWith(
          _$_AddTask value, $Res Function(_$_AddTask) then) =
      __$$_AddTaskCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic Function(
              {required int taskIndex, required int tasksCollectionId})
          onAdd});
}

/// @nodoc
class __$$_AddTaskCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_AddTask>
    implements _$$_AddTaskCopyWith<$Res> {
  __$$_AddTaskCopyWithImpl(_$_AddTask _value, $Res Function(_$_AddTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onAdd = null,
  }) {
    return _then(_$_AddTask(
      null == onAdd
          ? _value.onAdd
          : onAdd // ignore: cast_nullable_to_non_nullable
              as dynamic Function(
                  {required int taskIndex, required int tasksCollectionId}),
    ));
  }
}

/// @nodoc

class _$_AddTask implements _AddTask {
  const _$_AddTask(this.onAdd);

  @override
  final dynamic Function(
      {required int taskIndex, required int tasksCollectionId}) onAdd;

  @override
  String toString() {
    return 'TaskPageEvent.addTask(onAdd: $onAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTask &&
            (identical(other.onAdd, onAdd) || other.onAdd == onAdd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onAdd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      __$$_AddTaskCopyWithImpl<_$_AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return addTask(onAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return addTask?.call(onAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(onAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TaskPageEvent {
  const factory _AddTask(
      final dynamic Function(
              {required int taskIndex, required int tasksCollectionId})
          onAdd) = _$_AddTask;

  dynamic Function({required int taskIndex, required int tasksCollectionId})
      get onAdd;
  @JsonKey(ignore: true)
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTaskCopyWith<$Res> {
  factory _$$_DeleteTaskCopyWith(
          _$_DeleteTask value, $Res Function(_$_DeleteTask) then) =
      __$$_DeleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TaskPayload taskPayload,
      dynamic Function(
              {bool? deleted,
              required int taskIndex,
              required TasksCollection tasksCollection})
          onDelete});

  $TaskPayloadCopyWith<$Res> get taskPayload;
}

/// @nodoc
class __$$_DeleteTaskCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_DeleteTask>
    implements _$$_DeleteTaskCopyWith<$Res> {
  __$$_DeleteTaskCopyWithImpl(
      _$_DeleteTask _value, $Res Function(_$_DeleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskPayload = null,
    Object? onDelete = null,
  }) {
    return _then(_$_DeleteTask(
      taskPayload: null == taskPayload
          ? _value.taskPayload
          : taskPayload // ignore: cast_nullable_to_non_nullable
              as TaskPayload,
      onDelete: null == onDelete
          ? _value.onDelete
          : onDelete // ignore: cast_nullable_to_non_nullable
              as dynamic Function(
                  {bool? deleted,
                  required int taskIndex,
                  required TasksCollection tasksCollection}),
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskPayloadCopyWith<$Res> get taskPayload {
    return $TaskPayloadCopyWith<$Res>(_value.taskPayload, (value) {
      return _then(_value.copyWith(taskPayload: value));
    });
  }
}

/// @nodoc

class _$_DeleteTask implements _DeleteTask {
  const _$_DeleteTask({required this.taskPayload, required this.onDelete});

  @override
  final TaskPayload taskPayload;
  @override
  final dynamic Function(
      {bool? deleted,
      required int taskIndex,
      required TasksCollection tasksCollection}) onDelete;

  @override
  String toString() {
    return 'TaskPageEvent.deleteTask(taskPayload: $taskPayload, onDelete: $onDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTask &&
            (identical(other.taskPayload, taskPayload) ||
                other.taskPayload == taskPayload) &&
            (identical(other.onDelete, onDelete) ||
                other.onDelete == onDelete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskPayload, onDelete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      __$$_DeleteTaskCopyWithImpl<_$_DeleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return deleteTask(taskPayload, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return deleteTask?.call(taskPayload, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskPayload, onDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TaskPageEvent {
  const factory _DeleteTask(
      {required final TaskPayload taskPayload,
      required final dynamic Function(
              {bool? deleted,
              required int taskIndex,
              required TasksCollection tasksCollection})
          onDelete}) = _$_DeleteTask;

  TaskPayload get taskPayload;
  dynamic Function(
      {bool? deleted,
      required int taskIndex,
      required TasksCollection tasksCollection}) get onDelete;
  @JsonKey(ignore: true)
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditTaskCopyWith<$Res> {
  factory _$$_EditTaskCopyWith(
          _$_EditTask value, $Res Function(_$_EditTask) then) =
      __$$_EditTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskPayload taskPayload});

  $TaskPayloadCopyWith<$Res> get taskPayload;
}

/// @nodoc
class __$$_EditTaskCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_EditTask>
    implements _$$_EditTaskCopyWith<$Res> {
  __$$_EditTaskCopyWithImpl(
      _$_EditTask _value, $Res Function(_$_EditTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskPayload = null,
  }) {
    return _then(_$_EditTask(
      taskPayload: null == taskPayload
          ? _value.taskPayload
          : taskPayload // ignore: cast_nullable_to_non_nullable
              as TaskPayload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskPayloadCopyWith<$Res> get taskPayload {
    return $TaskPayloadCopyWith<$Res>(_value.taskPayload, (value) {
      return _then(_value.copyWith(taskPayload: value));
    });
  }
}

/// @nodoc

class _$_EditTask implements _EditTask {
  const _$_EditTask({required this.taskPayload});

  @override
  final TaskPayload taskPayload;

  @override
  String toString() {
    return 'TaskPageEvent.editTask(taskPayload: $taskPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTask &&
            (identical(other.taskPayload, taskPayload) ||
                other.taskPayload == taskPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditTaskCopyWith<_$_EditTask> get copyWith =>
      __$$_EditTaskCopyWithImpl<_$_EditTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return editTask(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return editTask?.call(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(taskPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return editTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return editTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(this);
    }
    return orElse();
  }
}

abstract class _EditTask implements TaskPageEvent {
  const factory _EditTask({required final TaskPayload taskPayload}) =
      _$_EditTask;

  TaskPayload get taskPayload;
  @JsonKey(ignore: true)
  _$$_EditTaskCopyWith<_$_EditTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ViewTaskCopyWith<$Res> {
  factory _$$_ViewTaskCopyWith(
          _$_ViewTask value, $Res Function(_$_ViewTask) then) =
      __$$_ViewTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskPayload taskPayload});

  $TaskPayloadCopyWith<$Res> get taskPayload;
}

/// @nodoc
class __$$_ViewTaskCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_ViewTask>
    implements _$$_ViewTaskCopyWith<$Res> {
  __$$_ViewTaskCopyWithImpl(
      _$_ViewTask _value, $Res Function(_$_ViewTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskPayload = null,
  }) {
    return _then(_$_ViewTask(
      taskPayload: null == taskPayload
          ? _value.taskPayload
          : taskPayload // ignore: cast_nullable_to_non_nullable
              as TaskPayload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskPayloadCopyWith<$Res> get taskPayload {
    return $TaskPayloadCopyWith<$Res>(_value.taskPayload, (value) {
      return _then(_value.copyWith(taskPayload: value));
    });
  }
}

/// @nodoc

class _$_ViewTask implements _ViewTask {
  const _$_ViewTask({required this.taskPayload});

  @override
  final TaskPayload taskPayload;

  @override
  String toString() {
    return 'TaskPageEvent.viewTask(taskPayload: $taskPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewTask &&
            (identical(other.taskPayload, taskPayload) ||
                other.taskPayload == taskPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewTaskCopyWith<_$_ViewTask> get copyWith =>
      __$$_ViewTaskCopyWithImpl<_$_ViewTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return viewTask(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return viewTask?.call(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) {
    if (viewTask != null) {
      return viewTask(taskPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return viewTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return viewTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
    required TResult orElse(),
  }) {
    if (viewTask != null) {
      return viewTask(this);
    }
    return orElse();
  }
}

abstract class _ViewTask implements TaskPageEvent {
  const factory _ViewTask({required final TaskPayload taskPayload}) =
      _$_ViewTask;

  TaskPayload get taskPayload;
  @JsonKey(ignore: true)
  _$$_ViewTaskCopyWith<_$_ViewTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelEditTaskCopyWith<$Res> {
  factory _$$_CancelEditTaskCopyWith(
          _$_CancelEditTask value, $Res Function(_$_CancelEditTask) then) =
      __$$_CancelEditTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskPayload taskPayload});

  $TaskPayloadCopyWith<$Res> get taskPayload;
}

/// @nodoc
class __$$_CancelEditTaskCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_CancelEditTask>
    implements _$$_CancelEditTaskCopyWith<$Res> {
  __$$_CancelEditTaskCopyWithImpl(
      _$_CancelEditTask _value, $Res Function(_$_CancelEditTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskPayload = null,
  }) {
    return _then(_$_CancelEditTask(
      taskPayload: null == taskPayload
          ? _value.taskPayload
          : taskPayload // ignore: cast_nullable_to_non_nullable
              as TaskPayload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskPayloadCopyWith<$Res> get taskPayload {
    return $TaskPayloadCopyWith<$Res>(_value.taskPayload, (value) {
      return _then(_value.copyWith(taskPayload: value));
    });
  }
}

/// @nodoc

class _$_CancelEditTask implements _CancelEditTask {
  const _$_CancelEditTask({required this.taskPayload});

  @override
  final TaskPayload taskPayload;

  @override
  String toString() {
    return 'TaskPageEvent.cancelEditTask(taskPayload: $taskPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelEditTask &&
            (identical(other.taskPayload, taskPayload) ||
                other.taskPayload == taskPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelEditTaskCopyWith<_$_CancelEditTask> get copyWith =>
      __$$_CancelEditTaskCopyWithImpl<_$_CancelEditTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return cancelEditTask(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return cancelEditTask?.call(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) {
    if (cancelEditTask != null) {
      return cancelEditTask(taskPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return cancelEditTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return cancelEditTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
    required TResult orElse(),
  }) {
    if (cancelEditTask != null) {
      return cancelEditTask(this);
    }
    return orElse();
  }
}

abstract class _CancelEditTask implements TaskPageEvent {
  const factory _CancelEditTask({required final TaskPayload taskPayload}) =
      _$_CancelEditTask;

  TaskPayload get taskPayload;
  @JsonKey(ignore: true)
  _$$_CancelEditTaskCopyWith<_$_CancelEditTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveEditTaskCopyWith<$Res> {
  factory _$$_SaveEditTaskCopyWith(
          _$_SaveEditTask value, $Res Function(_$_SaveEditTask) then) =
      __$$_SaveEditTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskPayload taskPayload});

  $TaskPayloadCopyWith<$Res> get taskPayload;
}

/// @nodoc
class __$$_SaveEditTaskCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res, _$_SaveEditTask>
    implements _$$_SaveEditTaskCopyWith<$Res> {
  __$$_SaveEditTaskCopyWithImpl(
      _$_SaveEditTask _value, $Res Function(_$_SaveEditTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskPayload = null,
  }) {
    return _then(_$_SaveEditTask(
      taskPayload: null == taskPayload
          ? _value.taskPayload
          : taskPayload // ignore: cast_nullable_to_non_nullable
              as TaskPayload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskPayloadCopyWith<$Res> get taskPayload {
    return $TaskPayloadCopyWith<$Res>(_value.taskPayload, (value) {
      return _then(_value.copyWith(taskPayload: value));
    });
  }
}

/// @nodoc

class _$_SaveEditTask implements _SaveEditTask {
  const _$_SaveEditTask({required this.taskPayload});

  @override
  final TaskPayload taskPayload;

  @override
  String toString() {
    return 'TaskPageEvent.saveEditTask(taskPayload: $taskPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveEditTask &&
            (identical(other.taskPayload, taskPayload) ||
                other.taskPayload == taskPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveEditTaskCopyWith<_$_SaveEditTask> get copyWith =>
      __$$_SaveEditTaskCopyWithImpl<_$_SaveEditTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTasks,
    required TResult Function(TaskPayload taskPayload) toggleTaskStatus,
    required TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)
        addTask,
    required TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)
        deleteTask,
    required TResult Function(TaskPayload taskPayload) editTask,
    required TResult Function(TaskPayload taskPayload) viewTask,
    required TResult Function(TaskPayload taskPayload) cancelEditTask,
    required TResult Function(TaskPayload taskPayload) saveEditTask,
  }) {
    return saveEditTask(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTasks,
    TResult? Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult? Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult? Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult? Function(TaskPayload taskPayload)? editTask,
    TResult? Function(TaskPayload taskPayload)? viewTask,
    TResult? Function(TaskPayload taskPayload)? cancelEditTask,
    TResult? Function(TaskPayload taskPayload)? saveEditTask,
  }) {
    return saveEditTask?.call(taskPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTasks,
    TResult Function(TaskPayload taskPayload)? toggleTaskStatus,
    TResult Function(
            dynamic Function(
                    {required int taskIndex, required int tasksCollectionId})
                onAdd)?
        addTask,
    TResult Function(
            TaskPayload taskPayload,
            dynamic Function(
                    {bool? deleted,
                    required int taskIndex,
                    required TasksCollection tasksCollection})
                onDelete)?
        deleteTask,
    TResult Function(TaskPayload taskPayload)? editTask,
    TResult Function(TaskPayload taskPayload)? viewTask,
    TResult Function(TaskPayload taskPayload)? cancelEditTask,
    TResult Function(TaskPayload taskPayload)? saveEditTask,
    required TResult orElse(),
  }) {
    if (saveEditTask != null) {
      return saveEditTask(taskPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTasks value) loadTasks,
    required TResult Function(_ToggleTaskStatus value) toggleTaskStatus,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_EditTask value) editTask,
    required TResult Function(_ViewTask value) viewTask,
    required TResult Function(_CancelEditTask value) cancelEditTask,
    required TResult Function(_SaveEditTask value) saveEditTask,
  }) {
    return saveEditTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTasks value)? loadTasks,
    TResult? Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_EditTask value)? editTask,
    TResult? Function(_ViewTask value)? viewTask,
    TResult? Function(_CancelEditTask value)? cancelEditTask,
    TResult? Function(_SaveEditTask value)? saveEditTask,
  }) {
    return saveEditTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTasks value)? loadTasks,
    TResult Function(_ToggleTaskStatus value)? toggleTaskStatus,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_EditTask value)? editTask,
    TResult Function(_ViewTask value)? viewTask,
    TResult Function(_CancelEditTask value)? cancelEditTask,
    TResult Function(_SaveEditTask value)? saveEditTask,
    required TResult orElse(),
  }) {
    if (saveEditTask != null) {
      return saveEditTask(this);
    }
    return orElse();
  }
}

abstract class _SaveEditTask implements TaskPageEvent {
  const factory _SaveEditTask({required final TaskPayload taskPayload}) =
      _$_SaveEditTask;

  TaskPayload get taskPayload;
  @JsonKey(ignore: true)
  _$$_SaveEditTaskCopyWith<_$_SaveEditTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
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

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

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
    required TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
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

abstract class _Initial extends TaskPageState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_DisplayTasksCollectionsCopyWith<$Res> {
  factory _$$_DisplayTasksCollectionsCopyWith(_$_DisplayTasksCollections value,
          $Res Function(_$_DisplayTasksCollections) then) =
      __$$_DisplayTasksCollectionsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TasksCollection> allTasksCollections,
      TaskPayload? taskPayload,
      bool editing});

  $TaskPayloadCopyWith<$Res>? get taskPayload;
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
    Object? allTasksCollections = null,
    Object? taskPayload = freezed,
    Object? editing = null,
  }) {
    return _then(_$_DisplayTasksCollections(
      allTasksCollections: null == allTasksCollections
          ? _value._allTasksCollections
          : allTasksCollections // ignore: cast_nullable_to_non_nullable
              as List<TasksCollection>,
      taskPayload: freezed == taskPayload
          ? _value.taskPayload
          : taskPayload // ignore: cast_nullable_to_non_nullable
              as TaskPayload?,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskPayloadCopyWith<$Res>? get taskPayload {
    if (_value.taskPayload == null) {
      return null;
    }

    return $TaskPayloadCopyWith<$Res>(_value.taskPayload!, (value) {
      return _then(_value.copyWith(taskPayload: value));
    });
  }
}

/// @nodoc

class _$_DisplayTasksCollections extends _DisplayTasksCollections {
  const _$_DisplayTasksCollections(
      {required final List<TasksCollection> allTasksCollections,
      this.taskPayload,
      this.editing = false})
      : _allTasksCollections = allTasksCollections,
        super._();

  final List<TasksCollection> _allTasksCollections;
  @override
  List<TasksCollection> get allTasksCollections {
    if (_allTasksCollections is EqualUnmodifiableListView)
      return _allTasksCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTasksCollections);
  }

  ///if taskPayload is not null, the user is editing
  @override
  final TaskPayload? taskPayload;
  @override
  @JsonKey()
  final bool editing;

  @override
  String toString() {
    return 'TaskPageState.displayTasksCollections(allTasksCollections: $allTasksCollections, taskPayload: $taskPayload, editing: $editing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayTasksCollections &&
            const DeepCollectionEquality()
                .equals(other._allTasksCollections, _allTasksCollections) &&
            (identical(other.taskPayload, taskPayload) ||
                other.taskPayload == taskPayload) &&
            (identical(other.editing, editing) || other.editing == editing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allTasksCollections),
      taskPayload,
      editing);

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
    required TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) {
    return displayTasksCollections(allTasksCollections, taskPayload, editing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) {
    return displayTasksCollections?.call(
        allTasksCollections, taskPayload, editing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
        displayTasksCollections,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (displayTasksCollections != null) {
      return displayTasksCollections(allTasksCollections, taskPayload, editing);
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

abstract class _DisplayTasksCollections extends TaskPageState {
  const factory _DisplayTasksCollections(
      {required final List<TasksCollection> allTasksCollections,
      final TaskPayload? taskPayload,
      final bool editing}) = _$_DisplayTasksCollections;
  const _DisplayTasksCollections._() : super._();

  List<TasksCollection> get allTasksCollections;

  ///if taskPayload is not null, the user is editing
  TaskPayload? get taskPayload;
  bool get editing;
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

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure() : super._();

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
    required TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)
        displayTasksCollections,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
        displayTasksCollections,
    TResult? Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TasksCollection> allTasksCollections,
            TaskPayload? taskPayload, bool editing)?
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

abstract class _LoadFailure extends TaskPageState {
  const factory _LoadFailure() = _$_LoadFailure;
  const _LoadFailure._() : super._();
}

/// @nodoc
mixin _$TaskPayload {
  int get tasksCollectionId => throw _privateConstructorUsedError;
  int get taskIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskPayloadCopyWith<TaskPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPayloadCopyWith<$Res> {
  factory $TaskPayloadCopyWith(
          TaskPayload value, $Res Function(TaskPayload) then) =
      _$TaskPayloadCopyWithImpl<$Res, TaskPayload>;
  @useResult
  $Res call({int tasksCollectionId, int taskIndex});
}

/// @nodoc
class _$TaskPayloadCopyWithImpl<$Res, $Val extends TaskPayload>
    implements $TaskPayloadCopyWith<$Res> {
  _$TaskPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksCollectionId = null,
    Object? taskIndex = null,
  }) {
    return _then(_value.copyWith(
      tasksCollectionId: null == tasksCollectionId
          ? _value.tasksCollectionId
          : tasksCollectionId // ignore: cast_nullable_to_non_nullable
              as int,
      taskIndex: null == taskIndex
          ? _value.taskIndex
          : taskIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskPayloadCopyWith<$Res>
    implements $TaskPayloadCopyWith<$Res> {
  factory _$$_TaskPayloadCopyWith(
          _$_TaskPayload value, $Res Function(_$_TaskPayload) then) =
      __$$_TaskPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tasksCollectionId, int taskIndex});
}

/// @nodoc
class __$$_TaskPayloadCopyWithImpl<$Res>
    extends _$TaskPayloadCopyWithImpl<$Res, _$_TaskPayload>
    implements _$$_TaskPayloadCopyWith<$Res> {
  __$$_TaskPayloadCopyWithImpl(
      _$_TaskPayload _value, $Res Function(_$_TaskPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksCollectionId = null,
    Object? taskIndex = null,
  }) {
    return _then(_$_TaskPayload(
      tasksCollectionId: null == tasksCollectionId
          ? _value.tasksCollectionId
          : tasksCollectionId // ignore: cast_nullable_to_non_nullable
              as int,
      taskIndex: null == taskIndex
          ? _value.taskIndex
          : taskIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TaskPayload implements _TaskPayload {
  const _$_TaskPayload(
      {required this.tasksCollectionId, required this.taskIndex});

  @override
  final int tasksCollectionId;
  @override
  final int taskIndex;

  @override
  String toString() {
    return 'TaskPayload(tasksCollectionId: $tasksCollectionId, taskIndex: $taskIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskPayload &&
            (identical(other.tasksCollectionId, tasksCollectionId) ||
                other.tasksCollectionId == tasksCollectionId) &&
            (identical(other.taskIndex, taskIndex) ||
                other.taskIndex == taskIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasksCollectionId, taskIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskPayloadCopyWith<_$_TaskPayload> get copyWith =>
      __$$_TaskPayloadCopyWithImpl<_$_TaskPayload>(this, _$identity);
}

abstract class _TaskPayload implements TaskPayload {
  const factory _TaskPayload(
      {required final int tasksCollectionId,
      required final int taskIndex}) = _$_TaskPayload;

  @override
  int get tasksCollectionId;
  @override
  int get taskIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TaskPayloadCopyWith<_$_TaskPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
