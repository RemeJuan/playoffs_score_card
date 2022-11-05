import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';

part 'history_state.freezed.dart';

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

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    required List<double> chartData,
    required List<ScoreCard> scores,
    required ChartDataSource activeChartDataSource,
    required MaxScoresModel maxScores,
  }) = _HistoryState;

  factory HistoryState.initial() => const HistoryState(
        chartData: [],
        scores: [],
        activeChartDataSource: ChartDataSource.total,
        maxScores: MaxScoresModel(),
      );
}
