import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) =>
          checkIfEditStateChanges(previous, current),
      // current.mapOrNull(
      //     displayTasksCollections: (e) => e.editPayload != null) ??
      // false,
      builder: (context, state) {
        EditPayload? editPayload =
            state.mapOrNull(displayTasksCollections: (e) => e.editPayload);
        final TextEditingController tec =
            state.mapOrNull(displayTasksCollections: (e) => e.addTaskTEC)!;
        // assert(
        //     tec != null,
        //     'Text Editing Controller cannot be null, this block is suppose'
        //     ' to reload if a textEditingController was provided when emiting the state');

        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).backgroundColor),
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {
                        if (stateIsEditing(state)) {
                          BlocProvider.of<TaskPageBloc>(context).add(
                              TaskPageEvent.editTask(
                                  tasksCollectionId:
                                      editPayload!.tasksCollectionId,
                                  taskIndex: editPayload.taskIndex));
                        }
                      },
                      maxLines: 4,
                      minLines: 1,
                      controller: tec,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Center(
                    child: AnimatedSwitcher(
                        duration: const Duration(
                            milliseconds:
                                kTaskAddAndRemovalUIAnimationDurationInMilliSeconds),
                        child: stateIsEditing(state)
                            ? _buildEditAndCancelIconButton(
                                context: context, editPayload: editPayload!)
                            : _buildAddIconButton(context)))
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAddIconButton(BuildContext context) {
    return _buildIcon(
        context: context,
        icon: Icon(
          Icons.add_circle_outline_outlined,
          color: Theme.of(context).backgroundColor,
          size: 40,
        ),
        onPressed: () {
          BlocProvider.of<TaskPageBloc>(context)
              .add(TaskPageEvent.addTask(_onAddSuccess));
          FocusScope.of(context).unfocus();
        });
  }

  Widget _buildEditAndCancelIconButton(
      {required BuildContext context, required EditPayload editPayload}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          //save
          _buildIcon(
            context: context,
            icon: Icon(
              color: Theme.of(context).backgroundColor,
              Icons.check_circle_outline_outlined,
              size: 40,
            ),
            onPressed: () {
              BlocProvider.of<TaskPageBloc>(context)
                  .add(TaskPageEvent.saveEditTask(
                tasksCollectionId: editPayload.tasksCollectionId,
                taskIndex: editPayload.taskIndex,
              ));

              FocusScope.of(context).unfocus();
            },
          ),
          const Spacer(),
          //cancel
          _buildIcon(
            context: context,
            icon: Icon(
              Icons.cancel_outlined,
              color: Theme.of(context).errorColor,
              size: 40,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildIcon(
      {required BuildContext context,
      required Icon icon,
      required Function() onPressed}) {
    return IconButton(
      onPressed: onPressed,
      icon: FittedBox(child: icon),
    );
  }

  Future<void> _onAddSuccess(
      {required int tasksCollectionId, required int taskIndex}) async {
    //add a new entry to animatedListsKey if a new tasksCollection has been added.
    if (animatedListKeys.containsKey(tasksCollectionId) == false) {
      animatedListKeys[tasksCollectionId] = GlobalKey<AnimatedListState>();
    }
    animateRowInsertion(
        //very sure the key exists
        key: animatedListKeys[tasksCollectionId]!,
        index: taskIndex);
    await Future.delayed(const Duration(milliseconds: 500));
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
