import 'package:freezed_annotation/freezed_annotation.dart';

part 'reps_model.freezed.dart';

// [RepsModel] stores the users reps for the activity, which is passed
// to [CoreUtils.calcScore] to calculate the score.
@freezed
class RepsModel with _$RepsModel {
  const RepsModel._();

  const factory RepsModel({
    required int rower,
    required int benchHops,
    required int kneeTuckPushUps,
    required int lateralHops,
    required int boxJumpBurpee,
    required int chinUps,
    required int squatPress,
    required int russianTwist,
    required int deadBallOverTheShoulder,
    required int shuttleSprintLateralHop,
  }) = _RepsModel;

  factory RepsModel.initial() => const RepsModel(
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
