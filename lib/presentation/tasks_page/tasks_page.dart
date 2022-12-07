library task_page;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/presentation/tasks_page/add_task_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/all_tasks_display_widget.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      //build when the alltasksCollection.length changes
      //i.e new tasksCollection is added or removed.
      buildWhen: (previous, current) {
        final r = previous.whenOrNull(
          displayTasksCollections: (allTasksCollections, _) =>
              allTasksCollections.length,
        );
        final j = current.whenOrNull(
          displayTasksCollections: (allTasksCollections, _) =>
              allTasksCollections.length,
        );
        final k = r != j;
        return k;
      },

      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            displayTasksCollections: (e) => Column(
                  children: [
                    Expanded(
                        child: AllTasksCollectionsDisplayWidget(
                            allTasksCollections: e.allTasksCollections)),
                    const AddTaskWidget()
                  ],
                ),
            loadFailure: (e) => Container());
      },
    );
  }
}
