import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/presentation/core/ui.dart';
import 'package:flutter_to_do/application/theme/theme_bloc.dart';
import 'package:flutter_to_do/injectable.dart';
import 'package:flutter_to_do/main.dart';
import 'package:responsive_framework/responsive_framework.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<ThemeBloc>(),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              routeInformationParser: appRouter.defaultRouteParser(),
              routerDelegate: appRouter.delegate(),
              debugShowCheckedModeBanner: false,
              theme: state.map(
                initial: (value) => lightThemeData(),
                light: (value) => lightThemeData(),
                dark: (value) => darkThemeData(),
              ),
              builder: (context, widget) => ResponsiveWrapper.builder(
                ClampingScrollWrapper.builder(
                  context,
                  Theme(
                      data: Theme.of(context).copyWith(
                          // textTheme: textTheme(context),
                          inputDecorationTheme: inputDecoration(context),
                          errorColor: Colors.red.shade300),
                      child: widget!),
                ),
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
                  const ResponsiveBreakpoint.autoScale(600,
                      name: TABLET, scaleFactor: 1.1),
                ],
              ),
            );
          },
        ));
  }
}
