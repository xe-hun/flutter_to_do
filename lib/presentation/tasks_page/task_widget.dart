import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.tasksCollection,
    required this.taskIndex,
  });

  final TasksCollection tasksCollection;
  final int taskIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      //build when the individual task is replaced (changed).

      buildWhen: (previous, current) => (checkIfThisTaskIsEdited(
              current: current,
              previous: previous,
              tasksCollectionId: tasksCollection.id!,
              taskIndex: taskIndex) ||
          checkIfTasksWithinATasksCollectionWasAddedOrRemoved(
              previous: previous,
              current: current,
              tasksCollectionId: tasksCollection.id!)),

      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          displayTasksCollections: (allTasksCollections, _, __) {
            //get the updated task from the state
            Task task = allTasksCollections
                .findById(tasksCollection.id!)
                .tasks[taskIndex];

            return GestureDetector(
                onLongPress: () {
                  print('routing to edit');
                  BlocProvider.of<TaskPageBloc>(context).add(
                      TaskPageEvent.editTask(
                          tasksCollectionId: tasksCollection.id!,
                          taskIndex: taskIndex));
                },
                child: _buildTaskWidget(task: task));
          },
        );
      },
    );
  }

  Widget _buildTaskWidget({required Task task}) {
    return Builder(builder: (context) {
      Color borderColor = Theme.of(context).primaryColor;
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            top: BorderSide(color: borderColor),
            // bottom: BorderSide(color: borderColor),
          ),
        ),
        child: IntrinsicHeight(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: double.infinity,
                          child: checkBoxWidget(
                              task, context, tasksCollection.id!, taskIndex)),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          task.title,
                          style: TextStyle(
                              decoration: task.completed
                                  ? TextDecoration.lineThrough
                                  : null),
                        ),
                      )),
                    ]),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  alignment: Alignment.centerRight,
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(1)),
                    gradient: LinearGradient(
                      stops: const [.2, 1],
                      colors: [
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0),
                        Theme.of(context).primaryColor,
                      ],
                    ),
                  ),
                  child: deleteButtonWidget(
                      context: context,
                      tasksCollectionId: tasksCollection.id!,
                      taskIndex: taskIndex),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  IconButton deleteButtonWidget({
    required BuildContext context,
    required int tasksCollectionId,
    required taskIndex,
  }) {
    return IconButton(
        onPressed: () {
          BlocProvider.of<TaskPageBloc>(context).add(TaskPageEvent.deleteTask(
              tasksCollectionId: tasksCollectionId,
              taskIndex: taskIndex,
              onDelete: onDelete));
        },
        icon: Icon(
          Icons.cancel,
          color: Theme.of(context).errorColor,
        ));
  }

  void onDelete(
      {required TasksCollection tasksCollection,
      required int taskIndex,
      bool? deleted}) {
    if (deleted == true) {
      animatedListKeys.remove(tasksCollection.id);
    } else {
      final taskBodyWidget = IgnorePointer(
        child: _buildTaskWidget(
          task: tasksCollection.tasks[taskIndex],
        ),
      );

      animateRowRemoval(
          index: taskIndex,
          key: animatedListKeys[tasksCollection.id]!,
          child: taskBodyWidget);
    }
  }

  Widget checkBoxWidget(
      Task task, BuildContext context, int tasksCollectionId, int taskIndex) {
    return Checkbox(
      value: task.completed,
      onChanged: (e) {
        BlocProvider.of<TaskPageBloc>(context).add(
            TaskPageEvent.toggleTaskStatus(
                tasksCollectionId: tasksCollectionId, taskIndex: taskIndex));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
  }
}
