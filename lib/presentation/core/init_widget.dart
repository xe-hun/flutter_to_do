import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/core/ui.dart';
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
                    textTheme: Theme.of(context).textTheme.copyWith(
                        bodyText1: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 20, wordSpacing: .2))),
          );
        },
      ),
    );
  }
}













// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_to_do/application/core/ui.dart';
// import 'package:flutter_to_do/application/theme/theme_bloc.dart';
// import 'package:flutter_to_do/injectable.dart';
// import 'package:flutter_to_do/main.dart';

// class AppWidget extends StatelessWidget {
//   const AppWidget({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<ThemeBloc>()
//         ..add(
//           const ThemeEvent.started(),
//         ),
//       child: BlocBuilder<ThemeBloc, ThemeState>(
//         builder: (context, state) {
//           return state.maybeMap(
//               initial: (value) => const MaterialApp(),
//               orElse: () => MaterialApp.router(
//                   routeInformationParser: appRouter.defaultRouteParser(),
//                   routerDelegate: appRouter.delegate(),
//                   debugShowCheckedModeBanner: false,
//                   theme: state
//                       .mapOrNull(
//                         light: (value) => lightThemeData(context),
//                         dark: (value) => darkThemeData(context),
//                       )!
//                       .copyWith(elevatedButtonTheme: elevatedButtonStyle())));
//         },
//       ),
//     );
//   }
// }

