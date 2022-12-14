import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/landing_page/landing_page_bloc.dart';
import 'package:flutter_to_do/application/task_page/task_page_bloc.dart';
import 'package:flutter_to_do/injectable.dart';
import 'package:flutter_to_do/presentation/router/app_router.gr.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
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
          // appBar: appBar(context),
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
    );
  }
}
