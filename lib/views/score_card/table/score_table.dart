import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/score_card/provider/score_card_notifier.dart';
import 'package:playoffs_score_card/views/score_card/provider/score_card_state.dart';

part "score_header.dart";
part "score_row.dart";

class ScoreTable extends ConsumerWidget {
  const ScoreTable({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final provider = ref.watch(scoreCardProvider);
    final notifier = ref.read(scoreCardProvider.notifier);
    final maxScores = provider.maxScores;
    final reps = provider.reps;
    final scores = provider.score;

    return Container(
      padding: const EdgeInsets.all(AppTheme.paddingDefault),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ScoreHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ScoreRow(
                    key: const ValueKey("rower"),
                    event: "1. Rower",
                    maxReps: maxScores.maxRower,
                    reps: reps.rower,
                    score: scores.rower,
                    onChanged: (value) => notifier.setRower(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("bench_hops"),
                    event: "2. Bench Hops",
                    maxReps: maxScores.maxBenchHops,
                    reps: reps.benchHops,
                    score: scores.benchHops,
                    onChanged: (value) =>
                        notifier.setBenchHops(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("knee_tuck_push_ups"),
                    event: "3. Knee Tuck Push Ups",
                    maxReps: maxScores.maxKneeTuckPushUps,
                    reps: reps.kneeTuckPushUps,
                    score: scores.kneeTuckPushUps,
                    onChanged: (value) =>
                        notifier.setKneeTuckPushUps(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("lateral_hops"),
                    event: "4. Lateral Hops",
                    maxReps: maxScores.maxLateralHops,
                    reps: reps.lateralHops,
                    score: scores.lateralHops,
                    onChanged: (value) =>
                        notifier.setLateralHops(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("box_jump_burpee"),
                    event: "5. Box Jump Burpee",
                    maxReps: maxScores.maxBoxJumpBurpee,
                    reps: reps.boxJumpBurpee,
                    score: scores.boxJumpBurpee,
                    onChanged: (value) =>
                        notifier.setBoxJumpBurpee(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("chin_ups"),
                    event: "6. Chin Ups",
                    maxReps: maxScores.maxChinUps,
                    reps: reps.chinUps,
                    score: scores.chinUps,
                    onChanged: (value) => notifier.setChinUps(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("squat_press"),
                    event: "7. Squat Press",
                    maxReps: maxScores.maxSquatPress,
                    reps: reps.squatPress,
                    score: scores.squatPress,
                    onChanged: (value) =>
                        notifier.setSquatPress(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("russian_twist"),
                    event: "8. Russian Twist",
                    maxReps: maxScores.maxRussianTwist,
                    reps: reps.russianTwist,
                    score: scores.russianTwist,
                    onChanged: (value) =>
                        notifier.setRussianTwist(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("dead_ball_over_the_shoulder"),
                    event: "9. Dead Ball Over The Shoulder",
                    maxReps: maxScores.maxDeadBallOverTheShoulder,
                    reps: reps.deadBallOverTheShoulder,
                    score: scores.deadBallOverTheShoulder,
                    onChanged: (value) =>
                        notifier.setDeadBallOverTheShoulder(int.parse(value)),
                  ),
                  ScoreRow(
                    key: const ValueKey("sprint_lateral_hops"),
                    event: "10. Shuttle Sprint and Lateral Hop",
                    maxReps: maxScores.maxShuttleSprintLateralHop,
                    reps: reps.shuttleSprintLateralHop,
                    score: scores.shuttleSprintLateralHop,
                    onChanged: (value) =>
                        notifier.setShuttleSprintLateralHop(int.parse(value)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
