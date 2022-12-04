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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../init_page/init_page.dart' as _i2;
import '../landing_page/landing_page.dart' as _i1;
import '../settings_page/settings_page.dart' as _i4;
import '../tasks_page/tasks_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InitRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.InitPage(),
      );
    },
    TasksRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.TasksPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
          children: [
            _i5.RouteConfig(
              TasksRoute.name,
              path: 'tasks-page',
              parent: LandingRoute.name,
            ),
            _i5.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: LandingRoute.name,
            ),
          ],
        ),
        _i5.RouteConfig(
          InitRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          path: '/landing-page',
          initialChildren: children,
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i5.PageRouteInfo<void> {
  const InitRoute()
      : super(
          InitRoute.name,
          path: '/',
        );

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i3.TasksPage]
class TasksRoute extends _i5.PageRouteInfo<void> {
  const TasksRoute()
      : super(
          TasksRoute.name,
          path: 'tasks-page',
        );

  static const String name = 'TasksRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings-page',
        );

  static const String name = 'SettingsRoute';
}
