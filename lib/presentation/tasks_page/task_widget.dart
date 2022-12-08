import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/widgets.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.tasksCollection,
    required this.taskIndex,
  });

  final TasksCollection tasksCollection;
  final int taskIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      //build when the individual task is replaced (changed).

      buildWhen: (previous, current) =>
          _checkIfThisTaskIsEdited(
              current: current,
              previous: previous,
              tasksCollectionId: tasksCollection.id!,
              taskIndex: taskIndex) ==
          true,

      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          displayTasksCollections: (allTasksCollections, _) {
            //get the updated task from the state
            Task task = allTasksCollections
                .findById(tasksCollection.id!)
                .tasks[taskIndex];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          checkBox(
                              task, context, tasksCollection.id!, taskIndex),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              task.title,
                              style: TextStyle(
                                  decoration: task.completed
                                      ? TextDecoration.lineThrough
                                      : null),
                            ),
                          ))
                        ]),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width * .5,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(1)),
                          gradient: LinearGradient(
                            stops: const [.2, 1],
                            colors: [
                              Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(.5),
                              Theme.of(context).backgroundColor,
                            ],
                          ),
                        ),
                        child: deleteButtonWidget(
                            context: context,
                            tasksCollectionId: tasksCollection.id!,
                            taskIndex: taskIndex),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  IconButton deleteButtonWidget({
    required BuildContext context,
    required int tasksCollectionId,
    required taskIndex,
  }) {
    return IconButton(
        onPressed: () {
          BlocProvider.of<TaskPageBloc>(context).add(TaskPageEvent.deleteTask(
              tasksCollectionId: tasksCollectionId,
              taskIndex: taskIndex,
              onDelete: onDelete));
        },
        icon: Icon(
          Icons.cancel,
          color: Theme.of(context).errorColor,
        ));
  }

  void onDelete(
      {required TasksCollection tasksCollection,
      required int taskIndex,
      bool? deleted}) {
    if (deleted == true) {
      animatedListKeys.remove(tasksCollection.id);
    } else {
      final taskBodyWidget = TaskWidget(
        tasksCollection: tasksCollection,
        taskIndex: taskIndex,
      );

      animateRowRemoval(
          index: taskIndex,
          key: animatedListKeys[tasksCollection.id]!,
          child: taskBodyWidget);
    }
  }

  Widget checkBox(
      Task task, BuildContext context, int tasksCollectionId, int taskIndex) {
    return Checkbox(
      value: task.completed,
      onChanged: (e) {
        BlocProvider.of<TaskPageBloc>(context).add(
            TaskPageEvent.toggleTaskStatus(
                tasksCollectionId: tasksCollectionId, taskIndex: taskIndex));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
  }

  //if task was edited, then it would be replace
  //therefore, checking the equality.
  bool _checkIfThisTaskIsEdited(
      {required TaskPageState current,
      required TaskPageState previous,
      required int tasksCollectionId,
      required int taskIndex}) {
    Task? currentTask = current.whenOrNull(
        displayTasksCollections: (allTasksCollections, _) => allTasksCollections
            .findById<TasksCollection>(tasksCollectionId)
            ?.tasks
            .getOrNull(taskIndex));

    return previous.whenOrNull(
                displayTasksCollections: (allTasksCollections, _) =>
                    allTasksCollections
                        .findById<TasksCollection>(tasksCollectionId)!
                        .tasks
                        .getOrNull(taskIndex)) !=
            currentTask &&
        //check in the case when a task was removed. do not rebuild.
        currentTask != null;
  }

  // bool _checkIfNoTaskWasAddedOrRemoved(
  //     {required TaskPageState current,
  //     required TaskPageState previous,
  //     required int tasksCollectionId}) {
  //   return current.whenOrNull(
  //         displayTasksCollections: (allTasksCollections, _) =>
  //             allTasksCollections
  //                 .findById<TasksCollection>(tasksCollectionId)
  //                 ?.tasks
  //                 .length,
  //       ) ==
  //       previous.whenOrNull(
  //         displayTasksCollections: (allTasksCollections, _) =>
  //             allTasksCollections
  //                 .findById<TasksCollection>(tasksCollectionId)
  //                 ?.tasks
  //                 .length,
  //       );
  // }
}
