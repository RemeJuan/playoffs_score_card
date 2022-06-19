// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_card.schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ScoreCard extends _ScoreCard with RealmEntity, RealmObject {
  ScoreCard(
    String id,
    DateTime date,
    int rower,
    int benchHops,
    int kneeTuckPushUps,
    int lateralHops,
    int boxJumpBurpee,
    int chinUps,
    int squatPress,
    int russianTwist,
    int deadBallOverTheShoulder,
    int shuttleSprintLateralHop,
  ) {
    RealmObject.set(this, '_id', id);
    RealmObject.set(this, 'date', date);
    RealmObject.set(this, 'rower', rower);
    RealmObject.set(this, 'benchHops', benchHops);
    RealmObject.set(this, 'kneeTuckPushUps', kneeTuckPushUps);
    RealmObject.set(this, 'lateralHops', lateralHops);
    RealmObject.set(this, 'boxJumpBurpee', boxJumpBurpee);
    RealmObject.set(this, 'chinUps', chinUps);
    RealmObject.set(this, 'squatPress', squatPress);
    RealmObject.set(this, 'russianTwist', russianTwist);
    RealmObject.set(this, 'deadBallOverTheShoulder', deadBallOverTheShoulder);
    RealmObject.set(this, 'shuttleSprintLateralHop', shuttleSprintLateralHop);
  }

  ScoreCard._();

  @override
  String get id => RealmObject.get<String>(this, '_id') as String;
  @override
  set id(String value) => throw RealmUnsupportedSetError();

  @override
  DateTime get date => RealmObject.get<DateTime>(this, 'date') as DateTime;
  @override
  set date(DateTime value) => RealmObject.set(this, 'date', value);

  @override
  int get rower => RealmObject.get<int>(this, 'rower') as int;
  @override
  set rower(int value) => RealmObject.set(this, 'rower', value);

  @override
  int get benchHops => RealmObject.get<int>(this, 'benchHops') as int;
  @override
  set benchHops(int value) => RealmObject.set(this, 'benchHops', value);

  @override
  int get kneeTuckPushUps =>
      RealmObject.get<int>(this, 'kneeTuckPushUps') as int;
  @override
  set kneeTuckPushUps(int value) =>
      RealmObject.set(this, 'kneeTuckPushUps', value);

  @override
  int get lateralHops => RealmObject.get<int>(this, 'lateralHops') as int;
  @override
  set lateralHops(int value) => RealmObject.set(this, 'lateralHops', value);

  @override
  int get boxJumpBurpee => RealmObject.get<int>(this, 'boxJumpBurpee') as int;
  @override
  set boxJumpBurpee(int value) => RealmObject.set(this, 'boxJumpBurpee', value);

  @override
  int get chinUps => RealmObject.get<int>(this, 'chinUps') as int;
  @override
  set chinUps(int value) => RealmObject.set(this, 'chinUps', value);

  @override
  int get squatPress => RealmObject.get<int>(this, 'squatPress') as int;
  @override
  set squatPress(int value) => RealmObject.set(this, 'squatPress', value);

  @override
  int get russianTwist => RealmObject.get<int>(this, 'russianTwist') as int;
  @override
  set russianTwist(int value) => RealmObject.set(this, 'russianTwist', value);

  @override
  int get deadBallOverTheShoulder =>
      RealmObject.get<int>(this, 'deadBallOverTheShoulder') as int;
  @override
  set deadBallOverTheShoulder(int value) =>
      RealmObject.set(this, 'deadBallOverTheShoulder', value);

  @override
  int get shuttleSprintLateralHop =>
      RealmObject.get<int>(this, 'shuttleSprintLateralHop') as int;
  @override
  set shuttleSprintLateralHop(int value) =>
      RealmObject.set(this, 'shuttleSprintLateralHop', value);

  @override
  Stream<RealmObjectChanges<ScoreCard>> get changes =>
      RealmObject.getChanges<ScoreCard>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(ScoreCard._);
    return const SchemaObject(ScoreCard, 'ScoreCard', [
      SchemaProperty('_id', RealmPropertyType.string,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('date', RealmPropertyType.timestamp),
      SchemaProperty('rower', RealmPropertyType.int),
      SchemaProperty('benchHops', RealmPropertyType.int),
      SchemaProperty('kneeTuckPushUps', RealmPropertyType.int),
      SchemaProperty('lateralHops', RealmPropertyType.int),
      SchemaProperty('boxJumpBurpee', RealmPropertyType.int),
      SchemaProperty('chinUps', RealmPropertyType.int),
      SchemaProperty('squatPress', RealmPropertyType.int),
      SchemaProperty('russianTwist', RealmPropertyType.int),
      SchemaProperty('deadBallOverTheShoulder', RealmPropertyType.int),
      SchemaProperty('shuttleSprintLateralHop', RealmPropertyType.int),
    ]);
  }
}
