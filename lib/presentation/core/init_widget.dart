import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/presentation/core/ui.dart';
import 'package:flutter_to_do/application/theme/theme_bloc.dart';
import 'package:flutter_to_do/injectable.dart';
import 'package:flutter_to_do/main.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeBloc>()..add(const ThemeEvent.started()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: appRouter.delegate(),
            debugShowCheckedModeBanner: false,
            theme: state
                .map(
                  initial: (value) => lightThemeData(context),
                  light: (value) => lightThemeData(context),
                  dark: (value) => darkThemeData(context),
                )
                .copyWith(
                  elevatedButtonTheme: elevatedButtonStyle(),
                ),
          );
        },
      ),
    );
  }
}
