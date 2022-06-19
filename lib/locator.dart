import 'package:get_it/get_it.dart';
import 'package:playoffs_score_tracker/router/router_provider.dart';
import 'package:playoffs_score_tracker/schemas/score_card.schema.dart';
import 'package:playoffs_score_tracker/views/score_card/provider/score_card_provider.dart';
import 'package:realm/realm.dart';
import 'package:uuid/uuid.dart' as u;

final sl = GetIt.instance;

void initService() {
  sl.registerLazySingleton<RouterProvider>(() => RouterProvider());
  sl.registerLazySingleton<ScoreCardProvider>(
    () {
      final config = Configuration.local([ScoreCard.schema]);
      final realm = Realm(config);
      return ScoreCardProvider(const u.Uuid(), realm);
    },
  );
}
