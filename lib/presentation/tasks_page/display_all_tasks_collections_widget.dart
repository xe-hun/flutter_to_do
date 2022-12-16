import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/edit_task_view.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_collection_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

class DisplayAllTasksCollectionsWidget extends StatelessWidget {
  const DisplayAllTasksCollectionsWidget(
      {super.key,
      required this.allTasksCollections,
      required this.scrollController});

  final List<TasksCollection> allTasksCollections;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) =>
          checkIfEditStateChanges(previous, current),
      builder: (context, state) {
        // int? tasksCollectionId = state.mapOrNull(
        //   displayTasksCollections: (e) => e.editPayload?.tasksCollectionId,
        // );
        EditPayload? editPayload =
            state.mapOrNull(displayTasksCollections: (e) => e.editPayload);
        return allTasksCollections.isEmpty
            ? noTaskWidget(context)
            : SizedBox(
                width: double.infinity,
                child: stateIsEditing(state)
                    ? EditTaskView(
                        editPayload: editPayload!,
                      )
                    : ListView(
                        // itemExtent: 1,
                        controller: scrollController,
                        children: allTasksCollections
                            .map((tasksCollection) => TasksCollectionWidget(
                                tasksCollectionId: tasksCollection.id!))
                            .toList(),
                      ),
              );
      },
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
