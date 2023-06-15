import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/providers/general_providers.dart';
import 'package:playoffs_score_card/core/utils/utils.dart';

import 'history_state.dart';

final historyProvider = StateNotifierProvider<HistoryNotifier, HistoryState>(
  HistoryNotifier.new,
);

class HistoryNotifier extends StateNotifier<HistoryState> {
  final Ref _ref;

  HistoryNotifier(this._ref) : super(HistoryState.initial());

  void getData() async {
    final _db = _ref.read(dbProvider);
    final max = state.maxScores;
    final sc = await _db.scoreCards.where().sortByDateDesc().findAll();
    final scores = sc.map((card) {
      if (card.totalScore == 0.0) {
        final scores = [
          CoreUtils.calcScore(card.rower, max.maxRower),
          CoreUtils.calcScore(card.benchHops, max.maxBenchHops),
          CoreUtils.calcScore(card.kneeTuckPushUps, max.maxKneeTuckPushUps),
          CoreUtils.calcScore(card.lateralHops, max.maxLateralHops),
          CoreUtils.calcScore(card.boxJumpBurpee, max.maxBoxJumpBurpee),
          CoreUtils.calcScore(card.chinUps, max.maxChinUps),
          CoreUtils.calcScore(card.squatPress, max.maxSquatPress),
          CoreUtils.calcScore(card.russianTwist, max.maxRussianTwist),
          CoreUtils.calcScore(
            card.deadBallOverTheShoulder,
            max.maxDeadBallOverTheShoulder,
          ),
          CoreUtils.calcScore(
            card.shuttleSprintLateralHop,
            max.maxShuttleSprintLateralHop,
          ),
        ];
        card.totalScore = double.parse(
          scores.reduce((a, b) => a + b).toStringAsFixed(1),
        );

        return card;
      }
      return card;
    }).toList();

    state = state.copyWith(
      scores: scores,
      chartData: scores.reversed.map((e) => e.totalScore.toDouble()).toList(),
    );
  }

  void updateChartData(ChartDataSource source) {
    final activeChartDataSource = source;
    num amount;

    final chartData = state.scores.reversed.map((e) {
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

    state = state.copyWith(
      chartData: chartData,
      activeChartDataSource: activeChartDataSource,
    );
  }

  void removeScore(ScoreCard score) async {
    final db = _ref.read(dbProvider);
    final auth = _ref.read(firebaseAuthProvider);
    final firestore = _ref.read(firestoreProvider);

    await db.writeTxn(() => db.scoreCards.delete(score.id!));
    // await Future.delayed(const Duration(milliseconds: 500));

    // Write scores to cloud when there is an active logged in user.
    final currentUser = auth.currentUser?.uid;
    if (currentUser != null) {
      final cards = await db.scoreCards.where().exportJson();
      await firestore.collection("scores").doc(auth.currentUser!.uid).set({
        "history": cards,
      });
    }
  }
}
