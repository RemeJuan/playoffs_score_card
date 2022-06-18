import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playoffs_score_tracker/router/app_router.gr.dart';
import 'package:playoffs_score_tracker/theme.dart';

import 'bootstrap.dart';
import 'locator.dart';

void main() {
  bootstrap(() => const PlayoffsTrackerApp());
}

class PlayoffsTrackerApp extends StatelessWidget {
  const PlayoffsTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _appRouter = sl<AppRouter>();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp.router(
      title: "Playoffs Score Tracker",
      theme: AppTheme.primary,
      routerDelegate: AutoRouterDelegate(_appRouter),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
