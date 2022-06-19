import 'package:get_it/get_it.dart';
import 'package:playoffs_score_tracker/router/router_provider.dart';
import 'package:playoffs_score_tracker/schemas/score_card.schema.dart';
import 'package:playoffs_score_tracker/views/history/provider/history.provider.dart';
import 'package:playoffs_score_tracker/views/score_card/provider/score_card_provider.dart';
import 'package:realm/realm.dart';
import 'package:uuid/uuid.dart' as u;

final sl = GetIt.instance;

void initService() {
  sl.registerLazySingleton<Realm>(() {
    final config = Configuration.local([ScoreCard.schema], schemaVersion: 2);
    return Realm(config);
  });
  sl.registerLazySingleton<RouterProvider>(() => RouterProvider());
  sl.registerLazySingleton<HistoryProvider>(
    () => HistoryProvider(sl()),
  );
  sl.registerLazySingleton<ScoreCardProvider>(
    () => ScoreCardProvider(const u.Uuid(), sl()),
  );
}
