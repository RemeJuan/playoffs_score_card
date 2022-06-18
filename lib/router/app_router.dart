import 'package:auto_route/annotations.dart';
import 'package:playoffs_score_tracker/views/history/history.view.dart';
import 'package:playoffs_score_tracker/views/score_card/score_card.view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route,Screen',
  preferRelativeImports: false,
  routes: <AutoRoute>[
    AutoRoute(page: ScoreCardView, initial: true),
    AutoRoute(page: HistoryView),
  ],
)
class $AppRouter {}
