import 'package:realm/realm.dart';

part "score_card.schema.g.dart";

@RealmModel()
class _ScoreCard {
  @PrimaryKey()
  @MapTo("_id")
  late String id;
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
}
