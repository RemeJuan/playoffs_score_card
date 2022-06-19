import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playoffs_score_card/app_landing.dart';
import 'package:playoffs_score_card/theme.dart';

import 'bootstrap.dart';

void main() {
  bootstrap(() => const PlayoffsTrackerApp());
}

class PlayoffsTrackerApp extends StatelessWidget {
  const PlayoffsTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: "Playoffs Score Tracker",
      theme: AppTheme.primary,
      home: AppLanding(),
    );
  }
}
