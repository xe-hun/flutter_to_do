import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks.dart';

class TasksDisplayWidget extends StatelessWidget {
  const TasksDisplayWidget({super.key, required this.tasksCollections});

  final List<TasksCollection> tasksCollections;

  @override
  Widget build(BuildContext context) {
    return tasksCollections.isEmpty
        ? noTaskWidget(context)
        : SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: tasksCollections
                      .map((tasksCollection) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              headerStyle(context, tasksCollection.dateTime),
                              ...tasksCollection.tasks.map(
                                (task) => bodyStyle(
                                    context: context,
                                    tasksCollection: tasksCollection,
                                    task: task),
                              )
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
          );
  }

  Widget bodyStyle(
      {required BuildContext context,
      required TasksCollection tasksCollection,
      required Task task}) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Checkbox(
              value: task.completed,
              onChanged: (e) {
                BlocProvider.of<TaskPageBloc>(context).add(
                    TaskPageEvent.toggleTaskStatus(
                        tasksCollection: tasksCollection, task: task));
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
  }

  Widget headerStyle(BuildContext context, DateTime dateTime) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0, left: 15),
      child: Text(
        dateTime.whichDay(),
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
