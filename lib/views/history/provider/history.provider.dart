import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';

class HistoryProvider extends ChangeNotifier {
  final Isar _isar;
  final MaxScoresModel maxScores;
  List<ScoreCard> scores = [];

  HistoryProvider(this._isar, this.maxScores) {
    _init();
  }

  late int maxRower;
  late int maxBenchHops;
  late int maxKneeTuckPushUps;
  late int maxLateralHops;
  late int maxBoxJumpBurpee;
  late int maxChinUps;
  late int maxSquatPress;
  late int maxRussianTwist;
  late int maxDeadBallOverTheShoulder;
  late int maxShuttleSprintLateralHop;

  void getData() async {
    scores = await _isar.scoreCards.where().findAll();
    notifyListeners();
  }

  void _init() async {
    // Max Scores
    maxRower = maxScores.maxRower;
    maxBenchHops = maxScores.maxBenchHops;
    maxKneeTuckPushUps = maxScores.maxKneeTuckPushUps;
    maxLateralHops = maxScores.maxLateralHops;
    maxBoxJumpBurpee = maxScores.maxBoxJumpBurpee;
    maxChinUps = maxScores.maxChinUps;
    maxSquatPress = maxScores.maxSquatPress;
    maxRussianTwist = maxScores.maxRussianTwist;
    maxDeadBallOverTheShoulder = maxScores.maxDeadBallOverTheShoulder;
    maxShuttleSprintLateralHop = maxScores.maxShuttleSprintLateralHop;
  }
}
