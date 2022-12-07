import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do/application/theme/theme_bloc.dart';
import 'package:flutter_to_do/presentation/router/app_router.gr.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ThemeBloc, ThemeState>(
      listener: (context, state) {
        state.maybeWhen(
          initial: () {
            //do nothing
          },
          orElse: () {
            Future.delayed(const Duration(milliseconds: 800),
                () => context.router.replace(LandingRoute()));
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: LinearProgressIndicator(),
          ),
        ),
        // backgroundColor: Colors.white,
      ),
    );
  }
}
