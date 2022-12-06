import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_to_do/domain/i_repository/i_task_repository.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/infrastructure/data_source/save_box.dart';
import 'package:flutter_to_do/schema/tasks_collection.dart' as prefs;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  const TaskRepository(this.datasource);

  final SaveBox datasource;

  @override
  Future<Either<Failure, List<TasksCollection>>> getAllTasks() async {
    try {
      final result = await datasource.findAll<prefs.TasksCollection>();
      return Right(result.map((e) => TasksCollection.fromPref(e)).toList());
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
  Future<Either<Failure, TasksCollection>> getSingleTasksCollection(
      {required int tasksCollectionId}) async {
    try {
      final tasksCollection = await datasource.read<prefs.TasksCollection, int>(
          key: tasksCollectionId);
      if (tasksCollection == null) {
        return const Left(Failure.noItemInStorage(failedValue: null));
      }
      return Right(TasksCollection.fromPref(tasksCollection));
    } catch (e) {
      return Left(Failure.storageFailure(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TasksCollection>> saveTask(
      {required TasksCollection tasksCollection}) async {
    try {
      final id = await datasource.save(object: tasksCollection.toPref());
      return Right(tasksCollection.copyWith(id: id));
    } catch (e) {
      return Left(Failure.storageFailure(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteTasksCollection(
      {required int tasksCollectionId}) async {
    try {
      final success = await datasource.delete(key: tasksCollectionId);

      if (success == true) {
        return Future.value(const Right(unit));
      } else {
        return const Left(Failure.storageFailure(failedValue: null));
      }
    } catch (e) {
      return Left(Failure.storageFailure(failedValue: e.toString()));
    }
  }
}
