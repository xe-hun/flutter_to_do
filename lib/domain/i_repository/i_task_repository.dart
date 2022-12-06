import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';

abstract class ITaskRepository {
  Future<Either<Failure, List<TasksCollection>>> getAllTasks();

  Future<Either<Failure, TasksCollection>> getSingleTask();

  Future<Either<Failure, TasksCollection>> saveTask(
      {required TasksCollection tasksCollection});
}
