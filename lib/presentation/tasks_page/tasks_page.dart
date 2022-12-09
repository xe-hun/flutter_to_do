library tasks_page;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/core/ui.dart';
import 'package:flutter_to_do/presentation/tasks_page/add_task_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/all_tasks_display_widget.dart';

part 'widgets.dart';

class TasksPage extends HookWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tasksCollectionListController = useScrollController();

    return BlocConsumer<TaskPageBloc, TaskPageState>(
      listener: (context, state) {
        state.whenOrNull(
          displayTasksCollections: (allTasksCollections, _, editing) {
            //this condition only happen once when the app is started.
            _initializeAnimatedListKeys(allTasksCollections);

            // if (editing == true) {
            //   AutoTabsRouter.of(context).navigate(const TaskEditRoute());
            // }
          },
        );
      },

      //build when the alltasksCollection.length changes
      //i.e new tasksCollection is added or removed.
      buildWhen: (previous, current) =>
          checkIfANewTasksCollectionWasRemovedOrAdded(
              previous: previous, current: current),

      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            displayTasksCollections: (e) => Column(
                  children: [
                    Expanded(
                        child: AllTasksCollectionsDisplayWidget(
                      allTasksCollections: e.allTasksCollections,
                      scrollController: tasksCollectionListController,
                    )),
                    AddTaskWidget(
                        scrollController: tasksCollectionListController)
                  ],
                ),
            loadFailure: (e) => Container());
      },
    );
  }

  //registering keys for animatedlist animations.
  void _initializeAnimatedListKeys(List<TasksCollection> allTasksCollections) {
    //this condition only happen once when the app is started.
    if (animatedListKeys.isEmpty && allTasksCollections.isNotEmpty) {
      for (final i in allTasksCollections) {
        //very sure this exists
        animatedListKeys[i.id!] = GlobalKey<AnimatedListState>();
      }
    }
  }
}
