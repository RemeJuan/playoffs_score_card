import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/score_card/provider/score_card_provider.dart';
import 'package:provider/provider.dart';

part "score_header.dart";
part "score_row.dart";

class ScoreTable extends StatelessWidget {
  const ScoreTable({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Consumer<ScoreCardProvider>(
      builder: (context, provider, _) {
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
                        key: const Key("1"),
                        event: "1. Rower",
                        maxReps: provider.maxRower,
                        reps: provider.rower,
                        score: provider.rowerScore,
                        onChanged: (value) =>
                            provider.setRower(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "2. Bench Hops",
                        maxReps: provider.maxBenchHops,
                        reps: provider.benchHops,
                        score: provider.benchHopsScore,
                        onChanged: (value) =>
                            provider.setBenchHops(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "3. Knee Tuck Push Ups",
                        maxReps: provider.maxKneeTuckPushUps,
                        reps: provider.kneeTuckPushUps,
                        score: provider.kneeTuckPushUpsScore,
                        onChanged: (value) =>
                            provider.setKneeTuckPushUps(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "4. Lateral Hops",
                        maxReps: provider.maxLateralHops,
                        reps: provider.lateralHops,
                        score: provider.lateralHopsScore,
                        onChanged: (value) =>
                            provider.setLateralHops(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "5. Box Jump Burpee",
                        maxReps: provider.maxBoxJumpBurpee,
                        reps: provider.boxJumpBurpee,
                        score: provider.boxJumpBurpeeScore,
                        onChanged: (value) =>
                            provider.setBoxJumpBurpee(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "6. Chin Ups",
                        maxReps: provider.maxChinUps,
                        reps: provider.chinUps,
                        score: provider.chinUpsScore,
                        onChanged: (value) =>
                            provider.setChinUps(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "7. Squat Press",
                        maxReps: provider.maxSquatPress,
                        reps: provider.squatPress,
                        score: provider.squatPressScore,
                        onChanged: (value) =>
                            provider.setSquatPress(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "8. Russian Twist",
                        maxReps: provider.maxRussianTwist,
                        reps: provider.russianTwist,
                        score: provider.russianTwistScore,
                        onChanged: (value) =>
                            provider.setRussianTwist(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "9. Dead Ball Over The Shoulder",
                        maxReps: provider.maxDeadBallOverTheShoulder,
                        reps: provider.deadBallOverTheShoulder,
                        score: provider.deadBallOverTheShoulderScore,
                        onChanged: (value) => provider
                            .setDeadBallOverTheShoulder(int.parse(value)),
                      ),
                      ScoreRow(
                        event: "10. Shuttle Sprint and Lateral Hop",
                        maxReps: provider.maxShuttleSprintLateralHop,
                        reps: provider.shuttleSprintLateralHop,
                        score: provider.shuttleSprintLateralHopScore,
                        onChanged: (value) => provider
                            .setShuttleSprintLateralHop(int.parse(value)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
