library tasks_page;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_to_do/application/core/ui_objects.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/application/theme/theme_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/presentation/core/ui.dart';
import 'package:flutter_to_do/presentation/tasks_page/add_task_widget.dart';
import 'package:flutter_to_do/presentation/tasks_page/display_all_tasks_collections_widget.dart';

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
        final allTasksCollections = state.mapOrNull(
          displayTasksCollections: (e) => e.allTasksCollections,
        )!;

        return Scaffold(
          appBar: appBar(context),
          body: Column(
            children: [
              Expanded(
                  child: DisplayAllTasksCollectionsWidget(
                allTasksCollections: allTasksCollections,
                scrollController: tasksCollectionListController,
              )),
              AddTaskWidget(scrollController: tasksCollectionListController)
            ],
          ),
        );
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

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.account_circle_outlined),
      title: const Text('ALL TASKS'),
      centerTitle: true,
      elevation: 0,
      actions: [
        themePopUpButton(context),
      ],
    );
  }

  PopupMenuButton<dynamic> themePopUpButton(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(Icons.palette_outlined),
        itemBuilder: (_) {
          return [
            themeMenuItem(
                label: 'Light Theme',
                context: context,
                icon: Icon(
                  Icons.wb_sunny_outlined,
                  color: Colors.grey.shade900,
                ),
                themeType: const AppThemeType.light()),
            themeMenuItem(
                label: 'Dark Theme',
                icon: Icon(
                  Icons.dark_mode_outlined,
                  color: Colors.grey.shade900,
                ),
                context: context,
                themeType: const AppThemeType.dark()),
          ];
        });
  }

  PopupMenuEntry themeMenuItem(
      {required BuildContext context,
      required String label,
      required Icon icon,
      required AppThemeType themeType}) {
    return PopupMenuItem(
      value: themeType,
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(right: 10.0), child: icon),
          Text(label),
        ],
      ),
      onTap: () {
        BlocProvider.of<ThemeBloc>(context)
            .add(ThemeEvent.changeTheme(themeType));
      },
    );
  }
}
