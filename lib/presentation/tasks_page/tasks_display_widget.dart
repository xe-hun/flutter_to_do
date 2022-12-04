import 'package:flutter/material.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks.dart';

class TasksDisplayWidget extends StatelessWidget {
  const TasksDisplayWidget({super.key, required this.tasksCollections});

  final List<TasksCollection> tasksCollections;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: tasksCollections
                .map((e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headerStyle(context, e.dateTime),
                        ...e.tasks.map((i) => bodyStyle(context, i))
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget bodyStyle(BuildContext context, Task i) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Checkbox(
          value: false,
          onChanged: (e) {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        Expanded(child: Text(i.title))
      ]),
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
}
