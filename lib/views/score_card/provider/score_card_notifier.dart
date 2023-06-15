import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/providers/general_providers.dart';
import 'package:playoffs_score_card/core/utils/utils.dart';
import 'package:playoffs_score_card/views/score_card/provider/score_card_state.dart';

final scoreCardProvider =
    StateNotifierProvider<ScoreCardNotifier, ScoreCardState>(
  ScoreCardNotifier.new,
);

class ScoreCardNotifier extends StateNotifier<ScoreCardState> {
  final Ref _ref;

  ScoreCardNotifier(this._ref) : super(ScoreCardState.initial());

  void addPreviousScore(DateTime d) async {
    state = ScoreCardState.initial().copyWith(date: d);
  }

  void setRower(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(rower: value),
      score: state.score.copyWith(
        rower: CoreUtils.calcScore(value, state.maxScores.maxRower),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setBenchHops(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(benchHops: value),
      score: state.score.copyWith(
        benchHops: CoreUtils.calcScore(value, state.maxScores.maxBenchHops),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setKneeTuckPushUps(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(kneeTuckPushUps: value),
      score: state.score.copyWith(
        kneeTuckPushUps:
            CoreUtils.calcScore(value, state.maxScores.maxKneeTuckPushUps),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setLateralHops(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(lateralHops: value),
      score: state.score.copyWith(
        lateralHops: CoreUtils.calcScore(value, state.maxScores.maxLateralHops),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setBoxJumpBurpee(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(boxJumpBurpee: value),
      score: state.score.copyWith(
        boxJumpBurpee: CoreUtils.calcScore(
          value,
          state.maxScores.maxBoxJumpBurpee,
        ),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setChinUps(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(chinUps: value),
      score: state.score.copyWith(
        chinUps: CoreUtils.calcScore(value, state.maxScores.maxChinUps),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setSquatPress(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(squatPress: value),
      score: state.score.copyWith(
        squatPress: CoreUtils.calcScore(value, state.maxScores.maxSquatPress),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setRussianTwist(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(russianTwist: value),
      score: state.score.copyWith(
        russianTwist: CoreUtils.calcScore(
          value,
          state.maxScores.maxRussianTwist,
        ),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setDeadBallOverTheShoulder(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(deadBallOverTheShoulder: value),
      score: state.score.copyWith(
        deadBallOverTheShoulder: CoreUtils.calcScore(
          value,
          state.maxScores.maxDeadBallOverTheShoulder,
        ),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void setShuttleSprintLateralHop(int value) {
    state = state.copyWith(
      reps: state.reps.copyWith(shuttleSprintLateralHop: value),
      score: state.score.copyWith(
        shuttleSprintLateralHop: CoreUtils.calcScore(
          value,
          state.maxScores.maxShuttleSprintLateralHop,
        ),
      ),
    );

    totalScoreCalculator();
    updateStatus();
  }

  void totalScoreCalculator() {
    final scores = [
      state.score.rower,
      state.score.benchHops,
      state.score.kneeTuckPushUps,
      state.score.lateralHops,
      state.score.boxJumpBurpee,
      state.score.chinUps,
      state.score.squatPress,
      state.score.russianTwist,
      state.score.deadBallOverTheShoulder,
      state.score.shuttleSprintLateralHop,
      0,
    ];

    // Remove all dummy (-1) scores from the lest and then add the remainder
    // together to get the total score
    final ts = scores.where((s) => s != -1).reduce((a, b) => a + b);

    state = state.copyWith(totalScore: double.parse(ts.toStringAsFixed(2)));
  }

  void updateStatus() {
    final allReps = [
      state.reps.rower,
      state.reps.benchHops,
      state.reps.kneeTuckPushUps,
      state.reps.lateralHops,
      state.reps.boxJumpBurpee,
      state.reps.chinUps,
      state.reps.squatPress,
      state.reps.russianTwist,
      state.reps.deadBallOverTheShoulder,
      state.reps.shuttleSprintLateralHop,
    ];

    state = state.copyWith(
      status: allReps.every((r) => r != -1)
          ? ScoreCardStatus.complete
          : ScoreCardStatus.incomplete,
    );
  }

  void save() async {
    final auth = _ref.read(firebaseAuthProvider);
    final db = _ref.read(dbProvider);
    final firestore = _ref.read(firestoreProvider);

    final card = ScoreCard()
      ..date = state.date
      ..rower = state.reps.rower
      ..benchHops = state.reps.benchHops
      ..kneeTuckPushUps = state.reps.kneeTuckPushUps
      ..lateralHops = state.reps.lateralHops
      ..boxJumpBurpee = state.reps.boxJumpBurpee
      ..chinUps = state.reps.chinUps
      ..squatPress = state.reps.squatPress
      ..russianTwist = state.reps.russianTwist
      ..deadBallOverTheShoulder = state.reps.deadBallOverTheShoulder
      ..shuttleSprintLateralHop = state.reps.shuttleSprintLateralHop
      ..totalScore = state.totalScore;

    await db.writeTxn(() async {
      db.scoreCards.put(card);
    });

    // Write scores to cloud when there is an active logged in user.
    final currentUser = auth.currentUser?.uid;
    if (currentUser != null) {
      final cards = await db.scoreCards.where().exportJson();
      await firestore.collection("scores").doc(auth.currentUser!.uid).set({
        "history": cards,
      });
    }

    await Future.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(status: ScoreCardStatus.saved);
    await Future.delayed(const Duration(milliseconds: 500));

    // Reset the state back to original
    state = ScoreCardState.initial();
  }
}
