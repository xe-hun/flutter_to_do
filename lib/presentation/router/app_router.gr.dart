// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../init_page/init_page.dart' as _i2;
import '../landing_page/landing_page.dart' as _i1;
import '../settings_page/about_me/about_me_page.dart' as _i8;
import '../settings_page/settings_page.dart' as _i4;
import '../settings_page/view_settings_page.dart' as _i7;
import '../tasks_page/display_all_tasks_collections_page.dart' as _i5;
import '../tasks_page/tasks_page.dart' as _i3;
import '../tasks_page/view_task_page.dart' as _i6;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InitRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.InitPage(),
      );
    },
    TasksRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.TasksPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
    DisplayAllTasksCollectionsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DisplayAllTasksCollectionsPage(),
      );
    },
    ViewTaskRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ViewTaskPage(),
      );
    },
    ViewSettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ViewSettingsPage(),
      );
    },
    AboutMeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AboutMePage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
          children: [
            _i9.RouteConfig(
              TasksRoute.name,
              path: 'tasks-page',
              parent: LandingRoute.name,
              children: [
                _i9.RouteConfig(
                  DisplayAllTasksCollectionsRoute.name,
                  path: '',
                  parent: TasksRoute.name,
                ),
                _i9.RouteConfig(
                  ViewTaskRoute.name,
                  path: 'view-task-page',
                  parent: TasksRoute.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: LandingRoute.name,
              children: [
                _i9.RouteConfig(
                  ViewSettingsRoute.name,
                  path: '',
                  parent: SettingsRoute.name,
                ),
                _i9.RouteConfig(
                  AboutMeRoute.name,
                  path: 'about-me-page',
                  parent: SettingsRoute.name,
                ),
              ],
            ),
          ],
        ),
        _i9.RouteConfig(
          InitRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i9.PageRouteInfo<void> {
  const LandingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          path: '/landing-page',
          initialChildren: children,
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i9.PageRouteInfo<void> {
  const InitRoute()
      : super(
          InitRoute.name,
          path: '/',
        );

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i3.TasksPage]
class TasksRoute extends _i9.PageRouteInfo<void> {
  const TasksRoute({List<_i9.PageRouteInfo>? children})
      : super(
          TasksRoute.name,
          path: 'tasks-page',
          initialChildren: children,
        );

  static const String name = 'TasksRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          path: 'settings-page',
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i5.DisplayAllTasksCollectionsPage]
class DisplayAllTasksCollectionsRoute extends _i9.PageRouteInfo<void> {
  const DisplayAllTasksCollectionsRoute()
      : super(
          DisplayAllTasksCollectionsRoute.name,
          path: '',
        );

  static const String name = 'DisplayAllTasksCollectionsRoute';
}

/// generated route for
/// [_i6.ViewTaskPage]
class ViewTaskRoute extends _i9.PageRouteInfo<void> {
  const ViewTaskRoute()
      : super(
          ViewTaskRoute.name,
          path: 'view-task-page',
        );

  static const String name = 'ViewTaskRoute';
}

/// generated route for
/// [_i7.ViewSettingsPage]
class ViewSettingsRoute extends _i9.PageRouteInfo<void> {
  const ViewSettingsRoute()
      : super(
          ViewSettingsRoute.name,
          path: '',
        );

  static const String name = 'ViewSettingsRoute';
}

/// generated route for
/// [_i8.AboutMePage]
class AboutMeRoute extends _i9.PageRouteInfo<void> {
  const AboutMeRoute()
      : super(
          AboutMeRoute.name,
          path: 'about-me-page',
        );

  static const String name = 'AboutMeRoute';
}
