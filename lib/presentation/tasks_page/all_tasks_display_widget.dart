import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';

class AllTasksCollectionsDisplayWidget extends StatelessWidget {
  const AllTasksCollectionsDisplayWidget(
      {super.key, required this.allTasksCollections});

  final List<TasksCollection> allTasksCollections;

  @override
  Widget build(BuildContext context) {
    return allTasksCollections.isEmpty
        ? noTaskWidget(context)
        : SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: allTasksCollections
                      .map((tasksCollection) =>
                          _tasksCollectionWidget(tasksCollection.id!))
                      .toList(),
                ),
              ),
            ),
          );
  }

  Widget _tasksCollectionWidget(int tasksCollectionId) {
    //rebuilds only when we are add or removing a task.
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) =>
          //get the tasksCollection.tasks length of the current taskCollection being rendered
          previous.whenOrNull(
              displayTasksCollections: ((allTasksCollections, _) =>
                  allTasksCollections
                      .findById(tasksCollectionId)
                      .tasks
                      .length)) !=
          current.whenOrNull(
              displayTasksCollections: ((allTasksCollections, _) =>
                  allTasksCollections
                      .findById(tasksCollectionId)
                      .tasks
                      .length)),
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            displayTasksCollections: (allTasksCollections, addTaskTEC) {
              final tasksCollection = allTasksCollections.findById(
                tasksCollectionId,
              );
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerStyle(context, tasksCollection.dateTime),
                  ...tasksCollection.tasks.asMap().entries.map(
                        (entry) => bodyStyle(
                            context: context,
                            tasksCollection: tasksCollection,
                            taskIndex: entry.key),
                      )
                ],
              );
            });
      },
    );
  }

  Widget bodyStyle(
      {required BuildContext context,
      required TasksCollection tasksCollection,
      required int taskIndex}) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      //build when the individual task is replaced (changed).

      buildWhen: (previous, current) {
        // return

        final r = current.whenOrNull(
            displayTasksCollections: (allTasksCollections, _) =>
                allTasksCollections
                    .findById(tasksCollection.id!)
                    .tasks[taskIndex]);
        final j = previous.whenOrNull(
            displayTasksCollections: (allTasksCollections, _) =>
                allTasksCollections
                    .findById(tasksCollection.id!)
                    .tasks[taskIndex]);
        final s = r != j;

        return r != j;
      },

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
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Checkbox(
                  value: task.completed,
                  onChanged: (e) {
                    BlocProvider.of<TaskPageBloc>(context).add(
                        TaskPageEvent.toggleTaskStatus(
                            tasksCollectionId: tasksCollection.id!,
                            taskIndex: taskIndex));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                Expanded(
                    child: Text(
                  task.title,
                  style: TextStyle(
                      decoration:
                          task.completed ? TextDecoration.lineThrough : null),
                ))
              ]),
            );
          },
        );
      },
    );
  }

  Widget headerStyle(BuildContext context, DateTime dateTime) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0, left: 15),
      child: Text(
        dateTime.whichDay,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget noTaskWidget(BuildContext context) {
    return Center(
      child: Text(
        'TASK EMPTY',
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Theme.of(context).backgroundColor),
      ),
    );
  }
}
