import 'package:flutter/material.dart';
import 'package:playoffs_score_tracker/schemas/score_card.schema.dart';
import 'package:realm/realm.dart';

class HistoryProvider extends ChangeNotifier {
  final Realm _realm;

  late List<ScoreCard> scores;

  HistoryProvider(this._realm);

  void init() {
    scores = _realm.all<ScoreCard>().toList()
      ..sort((a, b) => b.date.compareTo(a.date));
  }
}
