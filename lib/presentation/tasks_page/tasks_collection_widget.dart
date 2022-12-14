import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/task_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

class TasksCollectionWidget extends StatelessWidget {
  const TasksCollectionWidget({super.key, required this.tasksCollectionId});
  final int tasksCollectionId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      //rebuilds only when we are add or removing a task to this tasksCollection.
      buildWhen: (previous, current) =>
          checkIfTasksWithinThisTasksCollectionWasAddedOrRemoved(
              previous: previous,
              current: current,
              tasksCollectionId: tasksCollectionId),
      builder: (context, state) {
        TasksCollection tasksCollection = state.mapOrNull(
            displayTasksCollections: (e) =>
                e.allTasksCollections.findById(tasksCollectionId))!;

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
            ),
            Divider(
              thickness: 1,
              height: 0,
              color: Theme.of(context).primaryColor,
            )
          ],
        );
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
}
