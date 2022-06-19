import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_tracker/collections/score_card.collection.dart';

enum ScoreCardStatus {
  incomplete,
  complete,
  saved,
}

class ScoreCardProvider extends ChangeNotifier {
  final Isar db;

  final int maxRower = 290;
  final int maxBenchHops = 95;
  final int maxKneeTuckPushUps = 57;
  final int maxLateralHops = 130;
  final int maxBoxJumpBurpee = 20;
  final int maxChinUps = 25;
  final int maxSquatPress = 36;
  final int maxRussianTwist = 87;
  final int maxDeadBallOverTheShoulder = 27;
  final int maxShuttleSprintLateralHop = 15;

  int totalScore = 0;

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

  ScoreCardProvider(this.db) {
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
    status = ScoreCardStatus.incomplete;
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

  int _calcScore(int value, int max) {
    if (value > max) return 100;
    return (value / max * 100).round();
  }

  void totalScoreCalculator() {
    totalScore = rowerScore +
        benchHopsScore +
        kneeTuckPushUpsScore +
        lateralHopsScore +
        boxJumpBurpeeScore +
        chinUpsScore +
        squatPressScore +
        russianTwistScore +
        deadBallOverTheShoulderScore +
        shuttleSprintLateralHop;

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
