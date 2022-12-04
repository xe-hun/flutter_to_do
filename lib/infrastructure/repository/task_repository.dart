import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/i_repository/i_task_repository.dart';
import 'package:flutter_to_do/infrastructure/data_source/save_box.dart';
import 'package:flutter_to_do/schema/tasks.dart' as prefs;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  const TaskRepository(this.datasource);

  final SaveBox datasource;

  @override
  Future<Either<Failure, List<prefs.TasksCollection>>> getAllTasks() async {
    try {
      final result = await datasource.findAll<prefs.TasksCollection>();
      return Right(result);
    } catch (e) {
      return Left(Failure.storageFailure(failedValue: e.toString()));
    }

    // return Future.value(Right([
    //   dummyDatasource.tasksCollection1,
    //   dummyDatasource.tasksCollection2,
    //   dummyDatasource.tasksCollection3,
    // ]));
  }

  @override
  Future<Either<Failure, prefs.TasksCollection>> getSingleTask() {
    // TODO: implement getSingleTask
    throw UnimplementedError();
  }
}
