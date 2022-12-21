import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

class ViewTaskPage extends HookWidget {
  const ViewTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) {
        final taskPayload =
            current.mapOrNull(displayTasksCollections: (e) => e.taskPayload);
        return (taskPayload != null &&
                checkIfThisTaskIsEdited(
                    current: current,
                    previous: previous,
                    taskIndex: taskPayload.taskIndex,
                    tasksCollectionId: taskPayload.tasksCollectionId)) ||
            checkIfEditStateChanges(previous: previous, current: current);
      },
      builder: (context, state) {
        final taskPayload =
            state.mapOrNull(displayTasksCollections: (e) => e.taskPayload)!;

        final isEditingText =
            state.mapOrNull(displayTasksCollections: (e) => e.editing)!;

        final taskTEC = BlocProvider.of<TaskPageBloc>(context).viewTaskTEC;

        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: isEditingText == true
                                ? cancelAndSaveIconButtons(context, taskPayload)
                                : editAndBackIconButtons(
                                    context, taskPayload, focusNode)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: TextField(
                          maxLines: null,
                          textAlign: TextAlign.justify,
                          focusNode: focusNode,
                          enabled: isEditingText,
                          controller: taskTEC,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget cancelAndSaveIconButtons(
      BuildContext context, TaskPayload taskPayload) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {
            BlocProvider.of<TaskPageBloc>(context)
                .add(TaskPageEvent.saveEditTask(
                    taskPayload: TaskPayload(
              tasksCollectionId: taskPayload.tasksCollectionId,
              taskIndex: taskPayload.taskIndex,
            )));

            FocusScope.of(context).unfocus();
          },
        ),
        IconButton(
          icon: const Icon(Icons.close_outlined),
          onPressed: () {
            BlocProvider.of<TaskPageBloc>(context).add(
                TaskPageEvent.cancelEditTask(
                    taskPayload: TaskPayload(
                        taskIndex: taskPayload.taskIndex,
                        tasksCollectionId: taskPayload.tasksCollectionId)));
            FocusScope.of(context).unfocus();
          },
        ),
      ],
    );
  }

  Widget editAndBackIconButtons(
      BuildContext context, TaskPayload taskPayload, FocusNode focusNode) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.edit_note_outlined),
          onPressed: () {
            BlocProvider.of<TaskPageBloc>(context).add(TaskPageEvent.editTask(
                taskPayload: TaskPayload(
                    tasksCollectionId: taskPayload.tasksCollectionId,
                    taskIndex: taskPayload.taskIndex)));

            WidgetsBinding.instance.addPostFrameCallback(
                (_) => FocusScope.of(context).requestFocus(focusNode));
          },
        ),
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () async {
            AutoRouter.of(context).pop();
          },
        ),
      ],
    );
  }
}
