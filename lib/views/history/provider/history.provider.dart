import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';
import 'package:playoffs_score_card/core/utils/utils.dart';

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
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  List<ScoreCard> scores = [];

  List<double> chartData = [];

  HistoryProvider(this._isar, this.maxScores, this._auth, this._firestore) {
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
    final scoreCards =
        await _isar.scoreCards.where().sortByDateDesc().findAll();
    final cards = <ScoreCard>[];

    for (final card in scoreCards) {
      if (card.totalScore == 0.0) {
        final scores = [
          CoreUtils.calcScore(card.rower, maxRower),
          CoreUtils.calcScore(card.benchHops, maxBenchHops),
          CoreUtils.calcScore(card.kneeTuckPushUps, maxKneeTuckPushUps),
          CoreUtils.calcScore(card.lateralHops, maxLateralHops),
          CoreUtils.calcScore(card.boxJumpBurpee, maxBoxJumpBurpee),
          CoreUtils.calcScore(card.chinUps, maxChinUps),
          CoreUtils.calcScore(card.squatPress, maxSquatPress),
          CoreUtils.calcScore(card.russianTwist, maxRussianTwist),
          CoreUtils.calcScore(
            card.deadBallOverTheShoulder,
            maxDeadBallOverTheShoulder,
          ),
          CoreUtils.calcScore(
            card.shuttleSprintLateralHop,
            maxShuttleSprintLateralHop,
          ),
        ];
        card.totalScore = double.parse(
          scores.reduce((a, b) => a + b).toStringAsFixed(1),
        );
      }
      cards.add(card);
    }

    scores = cards;
    chartData = scores.reversed.map((e) => e.totalScore.toDouble()).toList();

    notifyListeners();
  }

  void updateChartData(ChartDataSource source) {
    activeChartDataSource = source;
    num amount;

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

  void removeScore(ScoreCard score) async {
    await _isar.writeTxn((isar) => isar.scoreCards.delete(score.id!));
    await Future.delayed(const Duration(milliseconds: 500));

    // Write scores to cloud when there is an active logged in user.
    final currentUser = _auth.currentUser?.uid;
    if (currentUser != null) {
      final cards = await _isar.scoreCards.where().exportJson();
      await _firestore.collection("scores").doc(_auth.currentUser!.uid).set({
        "history": cards,
      });
    }
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
