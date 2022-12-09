import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/core/ui_objects.dart';
import 'package:flutter_to_do/application/landing_page/landing_page_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/application/theme/theme_bloc.dart';
import 'package:flutter_to_do/injectable.dart';
import 'package:flutter_to_do/presentation/core/ui.dart';
import 'package:flutter_to_do/presentation/router/app_router.gr.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          textTheme: textTheme(context),
          inputDecorationTheme: inputDecoration(context),
          errorColor: Colors.red.shade300),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LandingPageBloc>(
            create: (_) => getIt<LandingPageBloc>(),
          ),
          BlocProvider<TaskPageBloc>(
            create: (_) =>
                getIt<TaskPageBloc>()..add(const TaskPageEvent.loadTasks()),
          )
        ],
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            appBar: appBar(context),
            body: AutoTabsScaffold(
                routes: const [
                  TasksRoute(),
                  SettingsRoute(),
                ],
                bottomNavigationBuilder: (_, tabsRouter) {
                  return BlocBuilder<LandingPageBloc, LandingPageState>(
                    builder: (context, state) {
                      LandingPageBloc blocProvider =
                          BlocProvider.of<LandingPageBloc>(context);
                      return BottomNavigationBar(
                          showSelectedLabels: false,
                          showUnselectedLabels: false,
                          onTap: (index) {
                            blocProvider
                                .add(LandingPageEvent.changeTab(index: index));
                            //navigate to route
                            switch (index) {
                              case 0:
                                tabsRouter.navigate(const TasksRoute());
                                break;
                              case 1:
                                tabsRouter.navigate(const SettingsRoute());
                                break;
                            }
                          },
                          currentIndex: state.maybeWhen(
                              idle: (currentIndex) => currentIndex,
                              orElse: () => 0),
                          items: const [
                            BottomNavigationBarItem(
                                icon: Icon(Icons.task), label: 'Tasks'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.settings), label: 'Settings')
                          ]);
                    },
                  );
                }),
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.account_circle_outlined),
      title: const Text('ALL TASKS'),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
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
