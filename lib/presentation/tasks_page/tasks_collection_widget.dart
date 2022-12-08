import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/task_widget.dart';

import 'widgets.dart';

class TasksCollectionWidget extends StatelessWidget {
  const TasksCollectionWidget({super.key, required this.tasksCollectionId});
  final int tasksCollectionId;

  @override
  Widget build(BuildContext context) {
    //rebuilds only when we are add or removing a task.
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) =>
          _checkIfTasksWithinATasksCollectionWasAddedOrRemoved(
              previous: previous,
              current: current,
              tasksCollectionId: tasksCollectionId) ==
          true,
      builder: (context, state) {
        print('task was removed or added');
        return state.maybeWhen(
            orElse: () => Container(),
            displayTasksCollections: (allTasksCollections, addTaskTEC) {
              TasksCollection tasksCollection = allTasksCollections.findById(
                tasksCollectionId,
              );
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerText(context, tasksCollection.dateTime),

                  AnimatedList(
                    key: animatedListKeys[tasksCollection.id],
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    initialItemCount: tasksCollection.tasks.length,
                    itemBuilder: (context, index, animation) {
                      return rowRemoveAndAddAnimation(
                        animation,
                        TaskWidget(
                          tasksCollection: tasksCollection,
                          taskIndex: index,
                        ),
                      );
                    },
                  )

                  // ...tasksCollection.tasks.asMap().entries.map(
                  //       (entry) => bodyStyle(
                  //           context: context,
                  //           tasksCollection: tasksCollection,
                  //           taskIndex: entry.key),
                  //     )
                ],
              );
            });
      },
    );
  }

  Widget headerText(BuildContext context, DateTime dateTime) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0, left: 15),
      child: Text(
        dateTime.whichDay,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  _checkIfTasksWithinATasksCollectionWasAddedOrRemoved(
      {required TaskPageState previous,
      required TaskPageState current,
      required int tasksCollectionId}) {
    return //get the tasksCollection.tasks length of the current taskCollection being rendered
        previous.whenOrNull(
                displayTasksCollections: ((allTasksCollections, _) =>
                    allTasksCollections
                        .findById<TasksCollection>(tasksCollectionId)!
                        .tasks
                        .length)) !=
            current.whenOrNull(
                displayTasksCollections: ((allTasksCollections, _) =>
                    allTasksCollections
                        .findById<TasksCollection>(tasksCollectionId)!
                        .tasks
                        .length));
  }
}
