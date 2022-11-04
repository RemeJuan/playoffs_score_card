import 'package:freezed_annotation/freezed_annotation.dart';

part 'scores_model.freezed.dart';

// The [ScoresModel] stores teh users score for teh activity as
// calculated by [CoreUtils.calcScore]
@freezed
class ScoresModel with _$ScoresModel {
  const ScoresModel._();

  const factory ScoresModel({
    required double rower,
    required double benchHops,
    required double kneeTuckPushUps,
    required double lateralHops,
    required double boxJumpBurpee,
    required double chinUps,
    required double squatPress,
    required double russianTwist,
    required double deadBallOverTheShoulder,
    required double shuttleSprintLateralHop,
  }) = _ScoresModel;

  factory ScoresModel.initial() => const ScoresModel(
        rower: -1,
        benchHops: -1,
        kneeTuckPushUps: -1,
        lateralHops: -1,
        boxJumpBurpee: -1,
        chinUps: -1,
        squatPress: -1,
        russianTwist: -1,
        deadBallOverTheShoulder: -1,
        shuttleSprintLateralHop: -1,
      );
}
