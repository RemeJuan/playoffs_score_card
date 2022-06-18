import 'package:get_it/get_it.dart';
import 'package:playoffs_score_tracker/router/app_router.gr.dart';

final sl = GetIt.instance;

void initService() {
  sl.registerSingleton<AppRouter>(AppRouter());
}
