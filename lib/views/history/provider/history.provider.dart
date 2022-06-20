import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';

enum ChartDataSource {
  total("Total"),
  rower("Rower"),
  benchHops("Bench Hops"),
  kneeTuckPushUps("Knee Tuck Push Ups"),
  lateralHops("Lateral Hops"),
  boxJumpBurpee("Box Jump Burpee"),
  chinUps("Chin Ups"),
  squatPress("Squat Press"),
  russianTwist("Russian Twist"),
  deadBallOverTheShoulder("Dead Ball Over The Shoulder"),
  shuttleSprintLateralHop("Shuttle Sprint Lateral Hop");

  final String name;

  const ChartDataSource(this.name);
}

class HistoryProvider extends ChangeNotifier {
  final Isar _isar;
  final MaxScoresModel maxScores;
  List<ScoreCard> scores = [];

  List<double> chartData = [];

  HistoryProvider(this._isar, this.maxScores) {
    _init();
  }

  ChartDataSource activeChartDataSource = ChartDataSource.total;

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

    chartData = scores.reversed.map((e) {
      return e.totalScore.toDouble();
    }).toList();

    notifyListeners();
  }

  void updateChartData(ChartDataSource source) {
    activeChartDataSource = source;
    int amount;

    chartData = scores.reversed.map((e) {
      switch (source) {
        case ChartDataSource.rower:
          amount = e.rower;
          break;
        case ChartDataSource.benchHops:
          amount = e.benchHops;
          break;
        case ChartDataSource.kneeTuckPushUps:
          amount = e.kneeTuckPushUps;
          break;
        case ChartDataSource.lateralHops:
          amount = e.lateralHops;
          break;
        case ChartDataSource.boxJumpBurpee:
          amount = e.boxJumpBurpee;
          break;
        case ChartDataSource.chinUps:
          amount = e.chinUps;
          break;
        case ChartDataSource.squatPress:
          amount = e.squatPress;
          break;
        case ChartDataSource.russianTwist:
          amount = e.russianTwist;
          break;
        case ChartDataSource.deadBallOverTheShoulder:
          amount = e.deadBallOverTheShoulder;
          break;
        case ChartDataSource.shuttleSprintLateralHop:
          amount = e.shuttleSprintLateralHop;
          break;
        case ChartDataSource.total:
        default:
          amount = e.totalScore;
          break;
      }

      return amount.toDouble();
    }).toList();

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
