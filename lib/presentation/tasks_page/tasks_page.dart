library task_page;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/presentation/tasks_page/add_task_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_display_widget.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            displayTasksCollections: (e) => Column(
                  children: [
                    Expanded(
                        child: TasksDisplayWidget(
                            tasksCollections: e.tasksCollections)),
                    const AddTaskWidget()
                  ],
                ),
            loadFailure: (e) => Container());
      },
    );
  }
}
