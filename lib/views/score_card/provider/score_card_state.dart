import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';
import 'package:playoffs_score_card/core/models/reps_model.dart';
import 'package:playoffs_score_card/core/models/scores_model.dart';
import 'package:playoffs_score_card/extensions/date_time.extension.dart';

part 'score_card_state.freezed.dart';

enum ScoreCardStatus {
  incomplete,
  complete,
  saved,
}

@freezed
class ScoreCardState with _$ScoreCardState {
  const factory ScoreCardState({
    required DateTime date,
    required MaxScoresModel maxScores,
    required RepsModel reps,
    required ScoresModel score,
    required double totalScore,
    required ScoreCardStatus status,
  }) = _ScoreCardState;

  factory ScoreCardState.initial() => ScoreCardState(
        date: ExtendedDateTime.current,
        maxScores: const MaxScoresModel(),
        reps: RepsModel.initial(),
        score: ScoresModel.initial(),
        totalScore: 0,
        status: ScoreCardStatus.incomplete,
      );
}
