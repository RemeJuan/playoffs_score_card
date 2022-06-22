import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_file_saver/flutter_file_saver.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';
import 'package:playoffs_score_card/router/router_provider.dart';
import 'package:playoffs_score_card/views/history/provider/history.provider.dart';
import 'package:playoffs_score_card/views/profile/provider/profile.provider.dart';
import 'package:playoffs_score_card/views/score_card/provider/score_card_provider.dart';

import 'collections/score_card.collection.dart';

final sl = GetIt.instance;

void initService() {
  sl.registerSingletonAsync<Isar>(() async {
    if (kIsWeb) {
      return await Isar.open(
        schemas: [ScoreCardSchema],
      );
    } else {
      return await Isar.open(
        schemas: [ScoreCardSchema],
        directory: (await getApplicationSupportDirectory()).path,
      );
    }
  });
  sl.registerLazySingletonAsync<PackageInfo>(
    () => PackageInfo.fromPlatform(),
  );

  sl.registerLazySingleton<FlutterFileSaver>(() => FlutterFileSaver());
  sl.registerLazySingleton<FilePicker>(() => FilePicker.platform);

  sl.registerLazySingleton<RouterProvider>(() => RouterProvider(sl()));
  sl.registerLazySingleton<ProfileProvider>(
    () => ProfileProvider(sl(), sl(), sl()),
  );
  sl.registerLazySingleton<HistoryProvider>(
    () => HistoryProvider(sl(), sl()),
  );
  sl.registerLazySingleton<MaxScoresModel>(() => MaxScoresModel());
  sl.registerLazySingleton<ScoreCardProvider>(
    () => ScoreCardProvider(sl(), sl()),
  );
}
