import 'dart:math';

import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/failures.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/infrastructure/repository/task_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<TaskRepository>()])
import 'task_page_bloc_test.mocks.dart';

void main() {
  late MockTaskRepository mockTaskRepository;
  late DateTime dateTime;
  late String taskTitle1;
  late String taskTitle2;
  late int tasksCollectionId;
  setUp(() {
    mockTaskRepository = MockTaskRepository();
    dateTime = DateTime.now();
    taskTitle1 = lorem(paragraphs: 1, words: 5);
    taskTitle2 = lorem(paragraphs: 1, words: 5);
    tasksCollectionId = Random().nextInt(200);
  });

  group("Load Tasks", () {
    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks collections : but filters out tasksCollections with empty tasks.',
      () async {
        final initialTasksCollectionList = [
          TasksCollection(dateTime: dateTime, tasks: []),
          TasksCollection(dateTime: dateTime, tasks: [Task(title: taskTitle1)])
        ];

        final resultingTasksCollectionList = [
          TasksCollection(dateTime: dateTime, tasks: [Task(title: taskTitle1)])
        ];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            tasksCollectionsResponse =
            Future.value(right(initialTasksCollectionList));

        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                allTasksCollections: resultingTasksCollectionList);
        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => tasksCollectionsResponse);
        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        // assert

        expectLater(bloc.stream, emitsInOrder([displayTasksCollectionState]))
            .then((value) => verify(mockTaskRepository.getAllTasks()));
      },
    );
  });

  group("Toggle tasks status", () {
    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks collections while changing the status of the target task.',
      () async {
        final tasksCollectionTrue = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime,
            tasks: [Task(title: taskTitle1, completed: true)]);

        final tasksCollectionsFalse = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime,
            tasks: [Task(title: taskTitle1, completed: false)]);

        final initialTasksCollectionsList = [tasksCollectionTrue];

        final mutatedTasksCollectionsList = [tasksCollectionsFalse];

        final taskPayload =
            TaskPayload(tasksCollectionId: tasksCollectionId, taskIndex: 0);

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        Future<Either<Failure<dynamic>, TasksCollection>>
            saveTasksCollectionsResponse =
            Future.value(right(tasksCollectionsFalse));

        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                allTasksCollections: mutatedTasksCollectionsList);
        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);
        when(mockTaskRepository.saveTask(
                tasksCollection: tasksCollectionsFalse))
            .thenAnswer((_) => saveTasksCollectionsResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        bloc.add(TaskPageEvent.toggleTaskStatus(taskPayload: taskPayload));

        // assert
        expectLater(
                bloc.stream,
                emitsInOrder(
                    [isA<TaskPageState>(), displayTasksCollectionState]))
            .then((value) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: tasksCollectionsFalse));
        });
      },
    );
  });

  group("Add a Task", () {
    onAdd({required int taskIndex, required int tasksCollectionId}) {}

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks collections while adding a new Task to the corresponding TasksCollection.',
      () async {
        final initialTasksCollection = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime,
            tasks: [Task(title: taskTitle1)]);

        final initialTasksCollectionsList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        final mutatedTasksCollection = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime,
            tasks: [Task(title: taskTitle1), Task(title: taskTitle2)]);
        final mutatedTasksCollectionList = [mutatedTasksCollection];
        Future<Either<Failure<dynamic>, TasksCollection>> saveTaskResponse =
            Future.value(right(mutatedTasksCollection));
        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                allTasksCollections: mutatedTasksCollectionList);

        // arrange

        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);
        when(mockTaskRepository.saveTask(
                tasksCollection: anyNamed('tasksCollection')))
            .thenAnswer((_) => saveTaskResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        bloc.add(TaskPageEvent.addTask(onAdd));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder(
                [isA<TaskPageState>(), displayTasksCollectionState])).then((_) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: anyNamed('tasksCollection')));
        });
      },
    );

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of '
      'tasks collections but creating a new TaskCollection with the new Task if it is atleast 24 '
      'hours after creating the last task.',
      () async {
        // tasksCollection with dateTime 24 hours from now.
        final initialTasksCollection = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime.add(const Duration(days: 1)),
            tasks: [Task(title: taskTitle1)]);

        final initialTasksCollectionList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionList));

        final mutatedTasksCollection = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime,
            tasks: [Task(title: taskTitle2)]);
        final mutatedTasksCollectionList = [
          initialTasksCollection,
          mutatedTasksCollection
        ];
        Future<Either<Failure<dynamic>, TasksCollection>> saveTaskResponse =
            Future.value(right(mutatedTasksCollection));
        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                allTasksCollections: mutatedTasksCollectionList);

        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);
        when(mockTaskRepository.saveTask(
                tasksCollection: anyNamed('tasksCollection')))
            .thenAnswer((_) => saveTaskResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        bloc.add(TaskPageEvent.addTask(onAdd));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder(
                [isA<TaskPageState>(), displayTasksCollectionState])).then((_) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: anyNamed('tasksCollection')));
        });
      },
    );
  });

  group("Delete a Task", () {
    onDelete(
        {bool? deleted,
        required int taskIndex,
        required TasksCollection tasksCollection}) {}

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks '
      'collections : but deletes the target task from the corresponding TasksCollection.',
      () async {
        TaskPayload taskPayload =
            TaskPayload(tasksCollectionId: tasksCollectionId, taskIndex: 1);

        final initialTasksCollection = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime,
            tasks: [Task(title: taskTitle1), Task(title: taskTitle2)]);

        final initialTasksCollectionsList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        final mutatedTasksCollection =
            TasksCollection(id: tasksCollectionId, dateTime: dateTime, tasks: [
          Task(title: taskTitle1),
        ]);
        final mutatedTasksCollectionList = [mutatedTasksCollection];
        Future<Either<Failure<dynamic>, TasksCollection>> saveTaskResponse =
            Future.value(right(mutatedTasksCollection));
        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                allTasksCollections: mutatedTasksCollectionList);

        // arrange

        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);
        when(mockTaskRepository.saveTask(
                tasksCollection: anyNamed('tasksCollection')))
            .thenAnswer((_) => saveTaskResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        bloc.add(TaskPageEvent.deleteTask(
            taskPayload: taskPayload, onDelete: onDelete));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder(
                [isA<TaskPageState>(), displayTasksCollectionState])).then((_) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: anyNamed('tasksCollection')));
        });
      },
    );

    test(
      'Should emit TaskPageState.displayTasksCollections with a list of '
      'tasks collections while deleting the a tasksCollection if the last task within it was deleted.',
      () async {
        TaskPayload taskPayload =
            TaskPayload(tasksCollectionId: tasksCollectionId, taskIndex: 0);

        //tasksCollection with dateTime 24 hours from now.
        final initialTasksCollection = TasksCollection(
            id: tasksCollectionId,
            dateTime: dateTime,
            tasks: [Task(title: taskTitle1)]);

        final initialTasksCollectionsList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        final mutatedTasksCollectionList = <TasksCollection>[];

        Future<Either<Failure<dynamic>, Unit>> deleteTasksCollectionResponse =
            Future.value(right(unit));
        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                allTasksCollections: mutatedTasksCollectionList);

        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);
        when(mockTaskRepository.deleteTasksCollection(
                tasksCollectionId: anyNamed('tasksCollectionId')))
            .thenAnswer((_) => deleteTasksCollectionResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());

        bloc.add(TaskPageEvent.deleteTask(
            taskPayload: taskPayload, onDelete: onDelete));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder(
                [isA<TaskPageState>(), displayTasksCollectionState])).then((_) {
          verify(mockTaskRepository.deleteTasksCollection(
              tasksCollectionId: anyNamed('tasksCollectionId')));
        });
      },
    );
  });

  group("Edit a Task", () {
    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks '
      'collections, a taskPayload and editing = true.',
      () async {
        TaskPayload taskPayload =
            TaskPayload(tasksCollectionId: tasksCollectionId, taskIndex: 0);

        final initialTasksCollection =
            TasksCollection(id: tasksCollectionId, dateTime: dateTime, tasks: [
          Task(title: taskTitle1),
        ]);

        final initialTasksCollectionsList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                editing: true,
                taskPayload: taskPayload,
                allTasksCollections: initialTasksCollectionsList);

        // arrange

        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());
        bloc.add(TaskPageEvent.viewTask(taskPayload: taskPayload));
        bloc.add(TaskPageEvent.editTask(taskPayload: taskPayload));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder([
              isA<TaskPageState>(),
              isA<TaskPageState>(),
              displayTasksCollectionState,
            ]));
      },
    );
  });

  group("Cancel Edit Task", () {
    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks '
      'collections, a taskPayload and editing = false.',
      () async {
        TaskPayload taskPayload =
            TaskPayload(tasksCollectionId: tasksCollectionId, taskIndex: 0);

        final initialTasksCollection =
            TasksCollection(id: tasksCollectionId, dateTime: dateTime, tasks: [
          Task(title: taskTitle1),
        ]);

        final initialTasksCollectionsList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                editing: false,
                taskPayload: taskPayload,
                allTasksCollections: initialTasksCollectionsList);

        // arrange

        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());
        bloc.add(TaskPageEvent.viewTask(taskPayload: taskPayload));
        bloc.add(TaskPageEvent.editTask(taskPayload: taskPayload));
        bloc.add(TaskPageEvent.cancelEditTask(taskPayload: taskPayload));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder([
              isA<TaskPageState>(),
              isA<TaskPageState>(),
              isA<TaskPageState>(),
              displayTasksCollectionState
            ]));
      },
    );
  });

  group("Save Edit Task", () {
    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks '
      'collections : while saving changes to the target task from in the corresponding TasksCollection.',
      () async {
        TaskPayload taskPayload =
            TaskPayload(tasksCollectionId: tasksCollectionId, taskIndex: 0);

        final initialTasksCollection =
            TasksCollection(id: tasksCollectionId, dateTime: dateTime, tasks: [
          Task(title: taskTitle1),
        ]);

        final initialTasksCollectionsList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        final mutatedTasksCollection =
            TasksCollection(id: tasksCollectionId, dateTime: dateTime, tasks: [
          Task(title: taskTitle2),
        ]);

        final mutatedTasksCollectionsList = [mutatedTasksCollection];

        Future<Either<Failure<dynamic>, TasksCollection>> saveTaskResponse =
            Future.value(right(mutatedTasksCollection));

        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                editing: false,
                taskPayload: taskPayload,
                allTasksCollections: mutatedTasksCollectionsList);

        // arrange

        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);

        when(mockTaskRepository.saveTask(
                tasksCollection: anyNamed('tasksCollection')))
            .thenAnswer((_) => saveTaskResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());
        bloc.add(TaskPageEvent.viewTask(taskPayload: taskPayload));
        bloc.add(TaskPageEvent.editTask(taskPayload: taskPayload));
        bloc.add(TaskPageEvent.saveEditTask(taskPayload: taskPayload));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder([
              isA<TaskPageState>(),
              isA<TaskPageState>(),
              isA<TaskPageState>(),
              displayTasksCollectionState,
            ])).then((value) {
          verify(mockTaskRepository.saveTask(
              tasksCollection: anyNamed('tasksCollection')));
        });
      },
    );
  });

  group("View Task", () {
    test(
      'Should emit TaskPageState.displayTasksCollections with a list of tasks '
      'collections, a taskPayload and editing = false.',
      () async {
        TaskPayload taskPayload =
            TaskPayload(tasksCollectionId: tasksCollectionId, taskIndex: 0);

        final initialTasksCollection =
            TasksCollection(id: tasksCollectionId, dateTime: dateTime, tasks: [
          Task(title: taskTitle1),
        ]);

        final initialTasksCollectionsList = [initialTasksCollection];

        Future<Either<Failure<dynamic>, List<TasksCollection>>>
            initialTasksCollectionsListResponse =
            Future.value(right(initialTasksCollectionsList));

        final displayTasksCollectionState =
            TaskPageState.displayTasksCollections(
                editing: false,
                taskPayload: taskPayload,
                allTasksCollections: initialTasksCollectionsList);

        // arrange
        when(mockTaskRepository.getAllTasks())
            .thenAnswer((_) => initialTasksCollectionsListResponse);

        final bloc = TaskPageBloc(mockTaskRepository);

        // act
        bloc.add(const TaskPageEvent.loadTasks());
        bloc.add(TaskPageEvent.viewTask(taskPayload: taskPayload));

        // assert
        expectLater(
            bloc.stream,
            emitsInOrder([
              isA<TaskPageState>(),
              displayTasksCollectionState,
            ]));
      },
    );
  });
}
