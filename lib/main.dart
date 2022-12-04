import 'package:flutter/material.dart';
import 'package:flutter_to_do/injectable.dart';
import 'package:flutter_to_do/presentation/core/init_widget.dart';
import 'package:flutter_to_do/presentation/router/app_router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(const InitWidget());
}

final AppRouter appRouter = AppRouter();
