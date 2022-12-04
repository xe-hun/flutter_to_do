import 'package:auto_route/auto_route.dart';
import 'package:flutter_to_do/presentation/landing_page/landing_page.dart';
import 'package:flutter_to_do/presentation/init_page/init_page.dart';
import 'package:flutter_to_do/presentation/settings_page/settings_page.dart';
import 'package:flutter_to_do/presentation/tasks_page/tasks_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: LandingPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
      children: [
        AutoRoute(page: TasksPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
    AutoRoute(page: InitPage, initial: true)
  ],
)
class $AppRouter {}
