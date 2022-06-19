import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';

class HistoryProvider extends ChangeNotifier {
  final Isar _isar;
  List<ScoreCard> scores = [];

  HistoryProvider(this._isar);

  void init() async {
    scores = await _isar.scoreCards.where().findAll();
    notifyListeners();
  }
}
