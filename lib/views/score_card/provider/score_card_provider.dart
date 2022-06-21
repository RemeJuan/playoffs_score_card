import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';

enum ScoreCardStatus {
  incomplete,
  complete,
  saved,
}

class ScoreCardProvider extends ChangeNotifier {
  final MaxScoresModel maxScores;
  final Isar db;

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

  late int totalScore;

  late DateTime date;
  late int rower;
  late int benchHops;
  late int kneeTuckPushUps;
  late int lateralHops;
  late int boxJumpBurpee;
  late int chinUps;
  late int squatPress;
  late int russianTwist;
  late int deadBallOverTheShoulder;
  late int shuttleSprintLateralHop;

  int rowerScore = 0;
  int benchHopsScore = 0;
  int kneeTuckPushUpsScore = 0;
  int lateralHopsScore = 0;
  int boxJumpBurpeeScore = 0;
  int chinUpsScore = 0;
  int squatPressScore = 0;
  int russianTwistScore = 0;
  int deadBallOverTheShoulderScore = 0;
  int shuttleSprintLateralHopScore = 0;

  ScoreCardStatus status = ScoreCardStatus.incomplete;

  ScoreCardProvider(this.db, this.maxScores) {
    _init();
  }

  void _init() {
    date = DateTime.now();
    rower = -1;
    benchHops = -1;
    kneeTuckPushUps = -1;
    lateralHops = -1;
    boxJumpBurpee = -1;
    chinUps = -1;
    squatPress = -1;
    russianTwist = -1;
    deadBallOverTheShoulder = -1;
    shuttleSprintLateralHop = -1;
    totalScore = 0;
    status = ScoreCardStatus.incomplete;

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

  void setRower(int value) {
    rower = value;
    rowerScore = _calcScore(value, maxRower);

    totalScoreCalculator();
    notifyListeners();
  }

  void setBenchHops(int value) {
    benchHops = value;
    benchHopsScore = _calcScore(value, maxBenchHops);

    totalScoreCalculator();
    notifyListeners();
  }

  void setKneeTuckPushUps(int value) {
    kneeTuckPushUps = value;
    kneeTuckPushUpsScore = _calcScore(value, maxKneeTuckPushUps);

    totalScoreCalculator();
    notifyListeners();
  }

  void setLateralHops(int value) {
    lateralHops = value;
    lateralHopsScore = _calcScore(value, maxLateralHops);

    totalScoreCalculator();
    notifyListeners();
  }

  void setBoxJumpBurpee(int value) {
    boxJumpBurpee = value;
    boxJumpBurpeeScore = _calcScore(value, maxBoxJumpBurpee);

    totalScoreCalculator();
    notifyListeners();
  }

  void setChinUps(int value) {
    chinUps = value;
    chinUpsScore = _calcScore(value, maxChinUps);

    totalScoreCalculator();
    notifyListeners();
  }

  void setSquatPress(int value) {
    squatPress = value;
    squatPressScore = _calcScore(value, maxSquatPress);

    totalScoreCalculator();
    notifyListeners();
  }

  void setRussianTwist(int value) {
    russianTwist = value;
    russianTwistScore = _calcScore(value, maxRussianTwist);

    totalScoreCalculator();
    notifyListeners();
  }

  void setDeadBallOverTheShoulder(int value) {
    deadBallOverTheShoulder = value;
    deadBallOverTheShoulderScore =
        _calcScore(value, maxDeadBallOverTheShoulder);

    totalScoreCalculator();
    notifyListeners();
  }

  void setShuttleSprintLateralHop(int value) {
    shuttleSprintLateralHop = value;
    shuttleSprintLateralHopScore =
        _calcScore(value, maxShuttleSprintLateralHop);

    totalScoreCalculator();
    notifyListeners();
  }

  void addPreviousScore(DateTime d) async {
    _init();
    date = d;
    notifyListeners();
  }

  int _calcScore(int value, int max) {
    if (value > max) return 100;
    return (value / max * 100).round();
  }

  void totalScoreCalculator() {
    final scores = [
      rowerScore,
      benchHopsScore,
      kneeTuckPushUpsScore,
      lateralHopsScore,
      boxJumpBurpeeScore,
      chinUpsScore,
      squatPressScore,
      russianTwistScore,
      deadBallOverTheShoulderScore,
      shuttleSprintLateralHopScore,
    ];

    // Remove all dummy (-1) scores from the lest and then add the remainder
    // together to get the total score
    final ts = scores.where((s) => s != -1).reduce((a, b) => a + b);

    totalScore = ts;

    canSave();
    notifyListeners();
  }

  void canSave() {
    if (rower != -1 &&
        benchHops != -1 &&
        kneeTuckPushUps != -1 &&
        lateralHops != -1 &&
        boxJumpBurpee != -1 &&
        chinUps != -1 &&
        squatPress != -1 &&
        russianTwist != -1 &&
        deadBallOverTheShoulder != -1 &&
        shuttleSprintLateralHop != -1) {
      status = ScoreCardStatus.complete;
    } else {
      status = ScoreCardStatus.incomplete;
    }
    notifyListeners();
  }

  void save() async {
    final card = ScoreCard()
      ..date = date
      ..rower = rower
      ..benchHops = benchHops
      ..kneeTuckPushUps = kneeTuckPushUps
      ..lateralHops = lateralHops
      ..boxJumpBurpee = boxJumpBurpee
      ..chinUps = chinUps
      ..squatPress = squatPress
      ..russianTwist = russianTwist
      ..deadBallOverTheShoulder = deadBallOverTheShoulder
      ..shuttleSprintLateralHop = shuttleSprintLateralHop
      ..totalScore = totalScore;

    await db.writeTxn((isar) async {
      isar.scoreCards.put(card);
    });

    status = ScoreCardStatus.saved;
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 500));

    _init();
  }
}
