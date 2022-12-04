import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/i_repository/i_task_repository.dart';
import 'package:flutter_to_do/infrastructure/data_source/dummy_datasource.dart';
import 'package:flutter_to_do/schema/tasks.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  const TaskRepository(this.dummyDatasource);

  final DummyDatasource dummyDatasource;

  @override
  Future<Either<Failure, List<TasksCollection>>> getAllTasks() {
    return Future.value(Right([
      dummyDatasource.tasksCollection1,
      dummyDatasource.tasksCollection2,
      dummyDatasource.tasksCollection3,
    ]));
  }

  @override
  Future<Either<Failure, TasksCollection>> getSingleTask() {
    // TODO: implement getSingleTask
    throw UnimplementedError();
  }
}
