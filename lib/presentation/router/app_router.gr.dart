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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../init_page/init_page.dart' as _i2;
import '../landing_page/landing_page.dart' as _i1;
import '../settings_page/about_me/about_me_page.dart' as _i6;
import '../settings_page/settings_page.dart' as _i4;
import '../settings_page/view_settings_page.dart' as _i5;
import '../tasks_page/tasks_page.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InitRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.InitPage(),
      );
    },
    TasksRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.TasksPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
    ViewSettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ViewSettingsPage(),
      );
    },
    AboutMeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AboutMePage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
          children: [
            _i7.RouteConfig(
              TasksRoute.name,
              path: 'tasks-page',
              parent: LandingRoute.name,
            ),
            _i7.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: LandingRoute.name,
              children: [
                _i7.RouteConfig(
                  ViewSettingsRoute.name,
                  path: '',
                  parent: SettingsRoute.name,
                ),
                _i7.RouteConfig(
                  AboutMeRoute.name,
                  path: 'about-me-page',
                  parent: SettingsRoute.name,
                ),
              ],
            ),
          ],
        ),
        _i7.RouteConfig(
          InitRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i7.PageRouteInfo<void> {
  const LandingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          path: '/landing-page',
          initialChildren: children,
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i7.PageRouteInfo<void> {
  const InitRoute()
      : super(
          InitRoute.name,
          path: '/',
        );

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i3.TasksPage]
class TasksRoute extends _i7.PageRouteInfo<void> {
  const TasksRoute()
      : super(
          TasksRoute.name,
          path: 'tasks-page',
        );

  static const String name = 'TasksRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          path: 'settings-page',
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i5.ViewSettingsPage]
class ViewSettingsRoute extends _i7.PageRouteInfo<void> {
  const ViewSettingsRoute()
      : super(
          ViewSettingsRoute.name,
          path: '',
        );

  static const String name = 'ViewSettingsRoute';
}

/// generated route for
/// [_i6.AboutMePage]
class AboutMeRoute extends _i7.PageRouteInfo<void> {
  const AboutMeRoute()
      : super(
          AboutMeRoute.name,
          path: 'about-me-page',
        );

  static const String name = 'AboutMeRoute';
}
