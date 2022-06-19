import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:playoffs_score_tracker/router/router_provider.dart';
import 'package:playoffs_score_tracker/views/history/provider/history.provider.dart';
import 'package:playoffs_score_tracker/views/score_card/provider/score_card_provider.dart';

import 'collections/score_card.collection.dart';

final sl = GetIt.instance;

void initService() {
  sl.registerSingletonAsync<Isar>(() async {
    final dir = await getApplicationSupportDirectory();
    return await Isar.open(
      schemas: [ScoreCardSchema],
      directory: dir.path,
    );
  });
  sl.registerLazySingleton<RouterProvider>(() => RouterProvider());
  sl.registerLazySingleton<HistoryProvider>(
    () => HistoryProvider(sl()),
  );
  sl.registerLazySingleton<ScoreCardProvider>(
    () => ScoreCardProvider(sl()),
  );
}
