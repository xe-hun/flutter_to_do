import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key, required this.editPayload});

  final EditPayload editPayload;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) => checkIfThisTaskIsEdited(
          current: current,
          previous: previous,
          tasksCollectionId: editPayload.tasksCollectionId,
          taskIndex: editPayload.taskIndex),
      builder: (context, state) {
        Task task = state.mapOrNull(
            displayTasksCollections: (e) => e.allTasksCollections
                .findById<TasksCollection>(e.editPayload!.tasksCollectionId)!
                .tasks[e.editPayload!.taskIndex])!;
        return Container(
          child: Text(
            task.title,
          ),
        );
      },
    );
  }
}
