import 'dart:math';

import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/infrastructure/repository/task_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// class MockTaskRepository extends Mock implements TaskRepository {}

@GenerateNiceMocks([MockSpec<TaskRepository>()])
import 'task_page_bloc_test.mocks.dart';

void main() {
  late MockTaskRepository mockTaskRepository;
  setUp(() {
    mockTaskRepository = MockTaskRepository();
  });

  group("Load Tasks", () {
    const taskTitle = 'a test title';
    final tasksCollections = [
      TasksCollection(dateTime: DateTime.now(), tasks: []),
      TasksCollection(
          dateTime: DateTime.now(), tasks: [const Task(title: taskTitle)])
    ];

    final tasksCollections2 = [
      TasksCollection(
          dateTime: DateTime.now(), tasks: [const Task(title: taskTitle)])
    ];

    Future<Either<Failure<dynamic>, List<TasksCollection>>>
        tasksCollectionsResponse = Future.value(right(tasksCollections));

    final taskPageState = TaskPageState.displayTasksCollections(
        allTasksCollections: tasksCollections2);

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks collections while filtering out tasksCollections with empty tasks.',
      () async {
        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => tasksCollectionsResponse);
        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        // assert

        expectLater(bloc.stream, emitsInOrder([taskPageState]))
            .then((value) => verify(mockTaskRepository.getAllTasks()));
      },
    );
  });

  group("Toggle tasks status", () {
    const taskTitle = 'a test title';
    final id = Random().nextInt(200);
    final tasksCollectionTrue = TasksCollection(
        id: id,
        dateTime: DateTime.now(),
        tasks: [const Task(title: taskTitle, completed: true)]);

    final tasksCollectionsFalse = TasksCollection(
        id: id,
        dateTime: DateTime.now(),
        tasks: [const Task(title: taskTitle, completed: false)]);

    final tasksCollectionsList = [tasksCollectionTrue];

    final mutatedTasksCollectionsList = [tasksCollectionsFalse];

    final taskPayload = TaskPayload(tasksCollectionId: id, taskIndex: 0);

    Future<Either<Failure<dynamic>, List<TasksCollection>>>
        tasksCollectionsListResponse =
        Future.value(right(tasksCollectionsList));

    Future<Either<Failure<dynamic>, TasksCollection>> tasksCollectionsResponse =
        Future.value(right(tasksCollectionsFalse));

    final taskPageState = TaskPageState.displayTasksCollections(
        allTasksCollections: mutatedTasksCollectionsList);

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks collections while changing the status of the target task.',
      () async {
        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => tasksCollectionsListResponse);
        when(mockTaskRepository.saveTask(
                tasksCollection: tasksCollectionsFalse))
            .thenAnswer((_) => tasksCollectionsResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        bloc.add(TaskPageEvent.toggleTaskStatus(taskPayload: taskPayload));

        // assert
        expectLater(bloc.stream,
            emitsInOrder([isA<TaskPageState>(), taskPageState])).then((value) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: tasksCollectionsFalse));
        });
      },
    );
  });

  group("Add a Task", () {
    const taskTitle1 = 'a test title 1';
    const taskTitle2 = 'a test title 2';
    final id = Random().nextInt(200);
    final tasksCollection = TasksCollection(
        id: id,
        dateTime: DateTime.now().subtract(const Duration(days: 1)),
        tasks: [const Task(title: taskTitle1)]);

    final mutatedTasksCollection = TasksCollection(
        id: id,
        dateTime: DateTime.now(),
        tasks: [const Task(title: taskTitle1), const Task(title: taskTitle2)]);

    final tasksCollectionsList = [tasksCollection];

    final mutatedTasksCollectionList = [mutatedTasksCollection];

    Future<Either<Failure<dynamic>, List<TasksCollection>>>
        tasksCollectionsListResponse =
        Future.value(right(tasksCollectionsList));

    Future<Either<Failure<dynamic>, TasksCollection>> saveTaskResponse =
        Future.value(right(mutatedTasksCollection));

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks collections while adding a new Task  to the corresponding TasksCollection.',
      () async {
        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => tasksCollectionsListResponse);
        when(mockTaskRepository.saveTask(
                tasksCollection: anyNamed('tasksCollection')))
            .thenAnswer((_) => saveTaskResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        onAdd({required int taskIndex, required int tasksCollectionId}) {}

        bloc.add(TaskPageEvent.addTask(onAdd));

        // assert

        final taskPageState = TaskPageState.displayTasksCollections(
            allTasksCollections: mutatedTasksCollectionList);
        expectLater(bloc.stream,
            emitsInOrder([isA<TaskPageState>(), taskPageState])).then((_) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: anyNamed('tasksCollection')));
        });
      },
    );

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of '
      'tasks collections while creating a new TaskCollection with a new Task if it atleast 24 '
      'hours after creating the last task.',
      () async {
        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => tasksCollectionsListResponse);
        when(mockTaskRepository.saveTask(
                tasksCollection: anyNamed('tasksCollection')))
            .thenAnswer((_) => saveTaskResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        onAdd({required int taskIndex, required int tasksCollectionId}) {}

        bloc.add(TaskPageEvent.addTask(onAdd));

        // assert
        expectLater(bloc.stream,
            emitsInOrder([isA<TaskPageState>(), taskPageState])).then((_) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: anyNamed('tasksCollection')));
        });
      },
    );
  });
}
