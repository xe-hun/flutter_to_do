import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/presentation/tasks_page/text_field_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_collection_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

class DisplayAllTasksCollectionsPage extends HookWidget {
  const DisplayAllTasksCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tasksCollectionListController = useScrollController();

    return BlocBuilder<TaskPageBloc, TaskPageState>(
      buildWhen: (previous, current) {
        return
            //i.e new tasksCollection is added or removed.
            checkIfANewTasksCollectionWasRemovedOrAdded(
                previous: previous, current: current);
      },
      builder: (context, state) {
        final allTasksCollections = state.mapOrNull(
            displayTasksCollections: (e) => e.allTasksCollections)!;
        return Scaffold(
          appBar: appBar2(context: context, title: 'ALL TASKS'),
          body: Column(
            children: [
              Expanded(
                  child: allTasksCollections.isEmpty
                      ? noTaskWidget(context)
                      : SizedBox(
                          width: double.infinity,
                          child: ListView(
                            // itemExtent: 1,
                            controller: tasksCollectionListController,
                            children: allTasksCollections
                                .map((tasksCollection) => TasksCollectionWidget(
                                    tasksCollectionId: tasksCollection.id!))
                                .toList(),
                          ),
                        )),
              TextFieldWidget(
                icon: const Icon(
                  Icons.add_circle_outline_outlined,
                  size: 40,
                ),
                onAction: () {
                  BlocProvider.of<TaskPageBloc>(context).add(
                      TaskPageEvent.addTask(
                          _getOnAddSuccess(tasksCollectionListController)));
                  FocusScope.of(context).unfocus();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  //return a function.
  dynamic _getOnAddSuccess(ScrollController scrollController) => ({
        required int tasksCollectionId,
        required int taskIndex,
      }) async {
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
      };

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
