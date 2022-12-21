library tasks_page;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/core/ui_objects.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/application/theme/theme_bloc.dart';
import 'package:flutter_to_do/domain/core/extensions.dart';
import 'package:flutter_to_do/domain/tasks/tasks_collection.dart';
import 'package:flutter_to_do/main.dart';
import 'package:flutter_to_do/presentation/core/ui.dart';

part 'widgets.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskPageBloc, TaskPageState>(
      listener: (context, state) {
        state.mapOrNull(
          displayTasksCollections: (e) {
            //this condition only happen once when the app is started.
            _initializeAnimatedListKeys(e.allTasksCollections);
          },
        );
      },
      buildWhen: (previous, current) =>
          previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return state.map(
            initial: (e) => Container(),
            displayTasksCollections: (e) => AutoRouter(
                  navigatorObservers: () {
                    return [routeObserver];
                  },
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
