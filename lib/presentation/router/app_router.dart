import 'package:auto_route/auto_route.dart';
import 'package:flutter_to_do/presentation/landing_page/landing_page.dart';
import 'package:flutter_to_do/presentation/init_page/init_page.dart';
import 'package:flutter_to_do/presentation/settings_page/about_me/about_me_page.dart';
import 'package:flutter_to_do/presentation/settings_page/settings_page.dart';
import 'package:flutter_to_do/presentation/settings_page/view_settings_page.dart';
import 'package:flutter_to_do/presentation/tasks_page/display_all_tasks_collections_page.dart';
import 'package:flutter_to_do/presentation/tasks_page/view_task_page.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: LandingPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
      children: [
        AutoRoute(
          page: TasksPage,
          children: <AutoRoute>[
            // RedirectRoute(path: '', redirectTo: 'allTasks'),
            AutoRoute(page: DisplayAllTasksCollectionsPage, initial: true),
            AutoRoute(page: ViewTaskPage),
          ],
        ),
        AutoRoute(
          page: SettingsPage,
          children: <AutoRoute>[
            AutoRoute(page: ViewSettingsPage, initial: true),
            AutoRoute(page: AboutMePage)
          ],
        ),
      ],
    ),
    AutoRoute(page: InitPage, initial: true),
  ],
)
class $AppRouter {}
