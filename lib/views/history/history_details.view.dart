import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/history/provider/history_notifier.dart';
import 'package:playoffs_score_card/views/history/widgets/score_details_header.dart';
import 'package:playoffs_score_card/views/history/widgets/score_details_row.dart';

class HistoryDetailsView extends ConsumerWidget {
  final ScoreCard score;

  const HistoryDetailsView({required this.score, Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final provider = ref.watch(historyProvider);
    final maxScores = provider.maxScores;

    return Container(
      padding: const EdgeInsets.all(AppTheme.paddingDefault),
      child: Column(
        children: [
          const ScoreDetailsHeader(),
          ScoreDetailsRow(
            name: "1. Rower",
            reps: score.rower,
            maxScore: maxScores.maxRower,
          ),
          ScoreDetailsRow(
            name: "2. Bench Hops",
            reps: score.benchHops,
            maxScore: maxScores.maxBenchHops,
          ),
          ScoreDetailsRow(
            name: "3. Knee Tuck Push Ups",
            reps: score.kneeTuckPushUps,
            maxScore: maxScores.maxKneeTuckPushUps,
          ),
          ScoreDetailsRow(
            name: "4. Lateral Hops",
            reps: score.lateralHops,
            maxScore: maxScores.maxLateralHops,
          ),
          ScoreDetailsRow(
            name: "5. Box Jump Burpee",
            reps: score.boxJumpBurpee,
            maxScore: maxScores.maxBoxJumpBurpee,
          ),
          ScoreDetailsRow(
            name: "6. Chin Ups",
            reps: score.chinUps,
            maxScore: maxScores.maxChinUps,
          ),
          ScoreDetailsRow(
            name: "7. Squat Press",
            reps: score.squatPress,
            maxScore: maxScores.maxSquatPress,
          ),
          ScoreDetailsRow(
            name: "8. Russian Twist",
            reps: score.russianTwist,
            maxScore: maxScores.maxRussianTwist,
          ),
          ScoreDetailsRow(
            name: "9. Dead Ball Over The Shoulder",
            reps: score.deadBallOverTheShoulder,
            maxScore: maxScores.maxDeadBallOverTheShoulder,
          ),
          ScoreDetailsRow(
            name: "10. Shuttle Sprint and Lateral Hop",
            reps: score.shuttleSprintLateralHop,
            maxScore: maxScores.maxShuttleSprintLateralHop,
          ),
        ],
      ),
    );
  }
}
