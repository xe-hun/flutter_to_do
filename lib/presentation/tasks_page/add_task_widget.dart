import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/presentation/tasks_page/widgets.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).backgroundColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: BlocProvider.of<TaskPageBloc>(context).addTaskTEC,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          Center(
            child: IconButton(
                onPressed: () {
                  BlocProvider.of<TaskPageBloc>(context)
                      .add(TaskPageEvent.addTask(_onAddSuccess));
                  FocusScope.of(context).unfocus();
                },
                icon: FittedBox(
                  child: Icon(
                    Icons.add_circle_sharp,
                    color: Theme.of(context).backgroundColor,
                    size: 40,
                  ),
                )),
          )
        ],
      ),
    );
  }

  void _onAddSuccess({required int tasksCollectionId, required int taskIndex}) {
    //add a new entry to animatedListsKey if a new tasksCollection has been added.
    if (animatedListKeys.containsKey(tasksCollectionId) == false) {
      animatedListKeys[tasksCollectionId] = GlobalKey<AnimatedListState>();
    }
    animateRowInsertion(
        //very sure the key exists
        key: animatedListKeys[tasksCollectionId]!,
        index: taskIndex);
  }
}
