import 'package:isar/isar.dart';

part 'score_card.collection.g.dart';

@Collection()
class ScoreCard {
  Id? id = Isar.autoIncrement;
  late DateTime date;
  late int rower;
  late int benchHops;
  late int kneeTuckPushUps;
  late int lateralHops;
  late int boxJumpBurpee;
  late int chinUps;
  late int squatPress;
  late int russianTwist;
  late int deadBallOverTheShoulder;
  late int shuttleSprintLateralHop;
  @ignore
  late num totalScore = 0.0;
}
