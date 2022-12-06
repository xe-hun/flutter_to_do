import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';

abstract class ITaskRepository {
  Future<Either<Failure, List<TasksCollection>>> getAllTasks();

  Future<Either<Failure, TasksCollection>> getSingleTasksCollection(
      {required int tasksCollectionId});

  Future<Either<Failure, TasksCollection>> saveTask(
      {required TasksCollection tasksCollection});

  Future<Either<Failure, Unit>> deleteTasksCollection(
      {required int tasksCollectionId});
}
