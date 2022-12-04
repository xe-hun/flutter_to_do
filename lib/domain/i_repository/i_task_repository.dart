import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:flutter_to_do/schema/tasks.dart';

abstract class ITaskRepository {
  Future<Either<Failure, List<TasksCollection>>> getAllTasks();

  Future<Either<Failure, TasksCollection>> getSingleTask();
}
