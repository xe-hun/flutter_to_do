import 'package:flutter/material.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_collection_widget.dart';

class AllTasksCollectionsDisplayWidget extends StatelessWidget {
  const AllTasksCollectionsDisplayWidget(
      {super.key,
      required this.allTasksCollections,
      required this.scrollController});

  final List<TasksCollection> allTasksCollections;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return allTasksCollections.isEmpty
        ? noTaskWidget(context)
        : SizedBox(
            width: double.infinity,
            child: ListView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: allTasksCollections
                  .map((tasksCollection) => TasksCollectionWidget(
                      tasksCollectionId: tasksCollection.id!))
                  .toList(),
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
