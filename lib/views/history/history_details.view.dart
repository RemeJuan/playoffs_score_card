import 'package:flutter/material.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/history/provider/history.provider.dart';
import 'package:playoffs_score_card/views/history/widgets/score_details_header.dart';
import 'package:playoffs_score_card/views/history/widgets/score_details_row.dart';
import 'package:provider/provider.dart';

class HistoryDetailsView extends StatelessWidget {
  final ScoreCard score;

  const HistoryDetailsView({required this.score, Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final provider = context.read<HistoryProvider>();

    return Container(
      padding: const EdgeInsets.all(AppTheme.paddingDefault),
      child: Column(
        children: [
          const ScoreDetailsHeader(),
          ScoreDetailsRow(
            name: "1. Rower",
            score: score.rower,
            maxScore: provider.maxRower,
          ),
          ScoreDetailsRow(
            name: "2. Bench Hops",
            score: score.benchHops,
            maxScore: provider.maxBenchHops,
          ),
          ScoreDetailsRow(
            name: "3. Knee Tuck Push Ups",
            score: score.kneeTuckPushUps,
            maxScore: provider.maxKneeTuckPushUps,
          ),
          ScoreDetailsRow(
            name: "4. Lateral Hops",
            score: score.lateralHops,
            maxScore: provider.maxLateralHops,
          ),
          ScoreDetailsRow(
            name: "5. Box Jump Burpee",
            score: score.boxJumpBurpee,
            maxScore: provider.maxBoxJumpBurpee,
          ),
          ScoreDetailsRow(
            name: "6. Chin Ups",
            score: score.chinUps,
            maxScore: provider.maxChinUps,
          ),
          ScoreDetailsRow(
            name: "7. Squat Press",
            score: score.squatPress,
            maxScore: provider.maxSquatPress,
          ),
          ScoreDetailsRow(
            name: "8. Russian Twist",
            score: score.russianTwist,
            maxScore: provider.maxRussianTwist,
          ),
          ScoreDetailsRow(
            name: "9. Dead Ball Over The Shoulder",
            score: score.deadBallOverTheShoulder,
            maxScore: provider.maxDeadBallOverTheShoulder,
          ),
          ScoreDetailsRow(
            name: "10. Shuttle Sprint and Lateral Hop",
            score: score.shuttleSprintLateralHop,
            maxScore: provider.maxShuttleSprintLateralHop,
          ),
        ],
      ),
    );
  }
}
