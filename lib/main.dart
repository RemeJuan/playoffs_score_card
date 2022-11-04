import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:playoffs_score_card/app_landing.dart';
import 'package:playoffs_score_card/core/providers/general_providers.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:rate_my_app/rate_my_app.dart';

import 'bootstrap.dart';
import 'collections/score_card.collection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  late Isar _isar;

  if (kIsWeb) {
    _isar = await Isar.open(
      schemas: [ScoreCardSchema],
    );
  } else {
    _isar = await Isar.open(
      schemas: [ScoreCardSchema],
      directory: (await getApplicationSupportDirectory()).path,
    );
  }

  bootstrap(
    () => ProviderScope(
      overrides: [
        dbProvider.overrideWithValue(_isar),
      ],
      child: const PlayoffsTrackerApp(),
    ),
  );
}

class PlayoffsTrackerApp extends StatelessWidget {
  const PlayoffsTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return RateMyAppBuilder(
      rateMyApp: RateMyApp(
        preferencesPrefix: 'rateMyApp_',
        minDays: 3,
        minLaunches: 7,
        remindDays: 2,
        remindLaunches: 5,
        googlePlayIdentifier: 'com.playoffs_score_card',
        appStoreIdentifier: 'com.playoffsScoreCard',
      ),
      onInitialized: (context, rateMyApp) {
        if (rateMyApp.shouldOpenDialog) {
          rateMyApp.showRateDialog(context);
        }
      },
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Playoffs Score Tracker",
          theme: AppTheme.primary,
          home: AppLanding(),
        );
      },
    );
  }
}
