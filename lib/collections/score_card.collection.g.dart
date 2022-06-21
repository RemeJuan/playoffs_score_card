// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_card.collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetScoreCardCollection on Isar {
  IsarCollection<ScoreCard> get scoreCards => getCollection();
}

const ScoreCardSchema = CollectionSchema(
  name: 'ScoreCard',
  schema:
      '{"name":"ScoreCard","idName":"id","properties":[{"name":"benchHops","type":"Long"},{"name":"boxJumpBurpee","type":"Long"},{"name":"chinUps","type":"Long"},{"name":"date","type":"Long"},{"name":"deadBallOverTheShoulder","type":"Long"},{"name":"kneeTuckPushUps","type":"Long"},{"name":"lateralHops","type":"Long"},{"name":"rower","type":"Long"},{"name":"russianTwist","type":"Long"},{"name":"shuttleSprintLateralHop","type":"Long"},{"name":"squatPress","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'benchHops': 0,
    'boxJumpBurpee': 1,
    'chinUps': 2,
    'date': 3,
    'deadBallOverTheShoulder': 4,
    'kneeTuckPushUps': 5,
    'lateralHops': 6,
    'rower': 7,
    'russianTwist': 8,
    'shuttleSprintLateralHop': 9,
    'squatPress': 10
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _scoreCardGetId,
  setId: _scoreCardSetId,
  getLinks: _scoreCardGetLinks,
  attachLinks: _scoreCardAttachLinks,
  serializeNative: _scoreCardSerializeNative,
  deserializeNative: _scoreCardDeserializeNative,
  deserializePropNative: _scoreCardDeserializePropNative,
  serializeWeb: _scoreCardSerializeWeb,
  deserializeWeb: _scoreCardDeserializeWeb,
  deserializePropWeb: _scoreCardDeserializePropWeb,
  version: 3,
);

int? _scoreCardGetId(ScoreCard object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _scoreCardSetId(ScoreCard object, int id) {
  object.id = id;
}

List<IsarLinkBase> _scoreCardGetLinks(ScoreCard object) {
  return [];
}

void _scoreCardSerializeNative(
    IsarCollection<ScoreCard> collection,
    IsarRawObject rawObj,
    ScoreCard object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.benchHops;
  final _benchHops = value0;
  final value1 = object.boxJumpBurpee;
  final _boxJumpBurpee = value1;
  final value2 = object.chinUps;
  final _chinUps = value2;
  final value3 = object.date;
  final _date = value3;
  final value4 = object.deadBallOverTheShoulder;
  final _deadBallOverTheShoulder = value4;
  final value5 = object.kneeTuckPushUps;
  final _kneeTuckPushUps = value5;
  final value6 = object.lateralHops;
  final _lateralHops = value6;
  final value7 = object.rower;
  final _rower = value7;
  final value8 = object.russianTwist;
  final _russianTwist = value8;
  final value9 = object.shuttleSprintLateralHop;
  final _shuttleSprintLateralHop = value9;
  final value10 = object.squatPress;
  final _squatPress = value10;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _benchHops);
  writer.writeLong(offsets[1], _boxJumpBurpee);
  writer.writeLong(offsets[2], _chinUps);
  writer.writeDateTime(offsets[3], _date);
  writer.writeLong(offsets[4], _deadBallOverTheShoulder);
  writer.writeLong(offsets[5], _kneeTuckPushUps);
  writer.writeLong(offsets[6], _lateralHops);
  writer.writeLong(offsets[7], _rower);
  writer.writeLong(offsets[8], _russianTwist);
  writer.writeLong(offsets[9], _shuttleSprintLateralHop);
  writer.writeLong(offsets[10], _squatPress);
}

ScoreCard _scoreCardDeserializeNative(IsarCollection<ScoreCard> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = ScoreCard();
  object.benchHops = reader.readLong(offsets[0]);
  object.boxJumpBurpee = reader.readLong(offsets[1]);
  object.chinUps = reader.readLong(offsets[2]);
  object.date = reader.readDateTime(offsets[3]);
  object.deadBallOverTheShoulder = reader.readLong(offsets[4]);
  object.id = id;
  object.kneeTuckPushUps = reader.readLong(offsets[5]);
  object.lateralHops = reader.readLong(offsets[6]);
  object.rower = reader.readLong(offsets[7]);
  object.russianTwist = reader.readLong(offsets[8]);
  object.shuttleSprintLateralHop = reader.readLong(offsets[9]);
  object.squatPress = reader.readLong(offsets[10]);
  return object;
}

P _scoreCardDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _scoreCardSerializeWeb(
    IsarCollection<ScoreCard> collection, ScoreCard object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'benchHops', object.benchHops);
  IsarNative.jsObjectSet(jsObj, 'boxJumpBurpee', object.boxJumpBurpee);
  IsarNative.jsObjectSet(jsObj, 'chinUps', object.chinUps);
  IsarNative.jsObjectSet(
      jsObj, 'date', object.date.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(
      jsObj, 'deadBallOverTheShoulder', object.deadBallOverTheShoulder);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'kneeTuckPushUps', object.kneeTuckPushUps);
  IsarNative.jsObjectSet(jsObj, 'lateralHops', object.lateralHops);
  IsarNative.jsObjectSet(jsObj, 'rower', object.rower);
  IsarNative.jsObjectSet(jsObj, 'russianTwist', object.russianTwist);
  IsarNative.jsObjectSet(
      jsObj, 'shuttleSprintLateralHop', object.shuttleSprintLateralHop);
  IsarNative.jsObjectSet(jsObj, 'squatPress', object.squatPress);
  return jsObj;
}

ScoreCard _scoreCardDeserializeWeb(
    IsarCollection<ScoreCard> collection, dynamic jsObj) {
  final object = ScoreCard();
  object.benchHops =
      IsarNative.jsObjectGet(jsObj, 'benchHops') ?? double.negativeInfinity;
  object.boxJumpBurpee =
      IsarNative.jsObjectGet(jsObj, 'boxJumpBurpee') ?? double.negativeInfinity;
  object.chinUps =
      IsarNative.jsObjectGet(jsObj, 'chinUps') ?? double.negativeInfinity;
  object.date = IsarNative.jsObjectGet(jsObj, 'date') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'date'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.deadBallOverTheShoulder =
      IsarNative.jsObjectGet(jsObj, 'deadBallOverTheShoulder') ??
          double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.kneeTuckPushUps = IsarNative.jsObjectGet(jsObj, 'kneeTuckPushUps') ??
      double.negativeInfinity;
  object.lateralHops =
      IsarNative.jsObjectGet(jsObj, 'lateralHops') ?? double.negativeInfinity;
  object.rower =
      IsarNative.jsObjectGet(jsObj, 'rower') ?? double.negativeInfinity;
  object.russianTwist =
      IsarNative.jsObjectGet(jsObj, 'russianTwist') ?? double.negativeInfinity;
  object.shuttleSprintLateralHop =
      IsarNative.jsObjectGet(jsObj, 'shuttleSprintLateralHop') ??
          double.negativeInfinity;
  object.squatPress =
      IsarNative.jsObjectGet(jsObj, 'squatPress') ?? double.negativeInfinity;
  return object;
}

P _scoreCardDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'benchHops':
      return (IsarNative.jsObjectGet(jsObj, 'benchHops') ??
          double.negativeInfinity) as P;
    case 'boxJumpBurpee':
      return (IsarNative.jsObjectGet(jsObj, 'boxJumpBurpee') ??
          double.negativeInfinity) as P;
    case 'chinUps':
      return (IsarNative.jsObjectGet(jsObj, 'chinUps') ??
          double.negativeInfinity) as P;
    case 'date':
      return (IsarNative.jsObjectGet(jsObj, 'date') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'date'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'deadBallOverTheShoulder':
      return (IsarNative.jsObjectGet(jsObj, 'deadBallOverTheShoulder') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'kneeTuckPushUps':
      return (IsarNative.jsObjectGet(jsObj, 'kneeTuckPushUps') ??
          double.negativeInfinity) as P;
    case 'lateralHops':
      return (IsarNative.jsObjectGet(jsObj, 'lateralHops') ??
          double.negativeInfinity) as P;
    case 'rower':
      return (IsarNative.jsObjectGet(jsObj, 'rower') ?? double.negativeInfinity)
          as P;
    case 'russianTwist':
      return (IsarNative.jsObjectGet(jsObj, 'russianTwist') ??
          double.negativeInfinity) as P;
    case 'shuttleSprintLateralHop':
      return (IsarNative.jsObjectGet(jsObj, 'shuttleSprintLateralHop') ??
          double.negativeInfinity) as P;
    case 'squatPress':
      return (IsarNative.jsObjectGet(jsObj, 'squatPress') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _scoreCardAttachLinks(IsarCollection col, int id, ScoreCard object) {}

extension ScoreCardQueryWhereSort
    on QueryBuilder<ScoreCard, ScoreCard, QWhere> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ScoreCardQueryWhere
    on QueryBuilder<ScoreCard, ScoreCard, QWhereClause> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension ScoreCardQueryFilter
    on QueryBuilder<ScoreCard, ScoreCard, QFilterCondition> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> benchHopsEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'benchHops',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      benchHopsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'benchHops',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> benchHopsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'benchHops',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> benchHopsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'benchHops',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'boxJumpBurpee',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'boxJumpBurpee',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'boxJumpBurpee',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'boxJumpBurpee',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'chinUps',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'chinUps',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'chinUps',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'chinUps',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'date',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deadBallOverTheShoulder',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'deadBallOverTheShoulder',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'deadBallOverTheShoulder',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'deadBallOverTheShoulder',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'kneeTuckPushUps',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'kneeTuckPushUps',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'kneeTuckPushUps',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'kneeTuckPushUps',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> lateralHopsEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lateralHops',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      lateralHopsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lateralHops',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> lateralHopsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lateralHops',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> lateralHopsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lateralHops',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'rower',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'rower',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'rower',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'rower',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> russianTwistEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'russianTwist',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      russianTwistGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'russianTwist',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      russianTwistLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'russianTwist',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> russianTwistBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'russianTwist',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'shuttleSprintLateralHop',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'shuttleSprintLateralHop',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'shuttleSprintLateralHop',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'shuttleSprintLateralHop',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> squatPressEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'squatPress',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      squatPressGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'squatPress',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> squatPressLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'squatPress',
      value: value,
    ));
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> squatPressBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'squatPress',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ScoreCardQueryLinks
    on QueryBuilder<ScoreCard, ScoreCard, QFilterCondition> {}

extension ScoreCardQueryWhereSortBy
    on QueryBuilder<ScoreCard, ScoreCard, QSortBy> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBenchHops() {
    return addSortByInternal('benchHops', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBenchHopsDesc() {
    return addSortByInternal('benchHops', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBoxJumpBurpee() {
    return addSortByInternal('boxJumpBurpee', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBoxJumpBurpeeDesc() {
    return addSortByInternal('boxJumpBurpee', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByChinUps() {
    return addSortByInternal('chinUps', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByChinUpsDesc() {
    return addSortByInternal('chinUps', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByDeadBallOverTheShoulder() {
    return addSortByInternal('deadBallOverTheShoulder', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByDeadBallOverTheShoulderDesc() {
    return addSortByInternal('deadBallOverTheShoulder', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByKneeTuckPushUps() {
    return addSortByInternal('kneeTuckPushUps', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByKneeTuckPushUpsDesc() {
    return addSortByInternal('kneeTuckPushUps', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByLateralHops() {
    return addSortByInternal('lateralHops', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByLateralHopsDesc() {
    return addSortByInternal('lateralHops', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRower() {
    return addSortByInternal('rower', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRowerDesc() {
    return addSortByInternal('rower', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRussianTwist() {
    return addSortByInternal('russianTwist', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRussianTwistDesc() {
    return addSortByInternal('russianTwist', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByShuttleSprintLateralHop() {
    return addSortByInternal('shuttleSprintLateralHop', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByShuttleSprintLateralHopDesc() {
    return addSortByInternal('shuttleSprintLateralHop', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortBySquatPress() {
    return addSortByInternal('squatPress', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortBySquatPressDesc() {
    return addSortByInternal('squatPress', Sort.desc);
  }
}

extension ScoreCardQueryWhereSortThenBy
    on QueryBuilder<ScoreCard, ScoreCard, QSortThenBy> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBenchHops() {
    return addSortByInternal('benchHops', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBenchHopsDesc() {
    return addSortByInternal('benchHops', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBoxJumpBurpee() {
    return addSortByInternal('boxJumpBurpee', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBoxJumpBurpeeDesc() {
    return addSortByInternal('boxJumpBurpee', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByChinUps() {
    return addSortByInternal('chinUps', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByChinUpsDesc() {
    return addSortByInternal('chinUps', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByDeadBallOverTheShoulder() {
    return addSortByInternal('deadBallOverTheShoulder', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByDeadBallOverTheShoulderDesc() {
    return addSortByInternal('deadBallOverTheShoulder', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByKneeTuckPushUps() {
    return addSortByInternal('kneeTuckPushUps', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByKneeTuckPushUpsDesc() {
    return addSortByInternal('kneeTuckPushUps', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByLateralHops() {
    return addSortByInternal('lateralHops', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByLateralHopsDesc() {
    return addSortByInternal('lateralHops', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRower() {
    return addSortByInternal('rower', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRowerDesc() {
    return addSortByInternal('rower', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRussianTwist() {
    return addSortByInternal('russianTwist', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRussianTwistDesc() {
    return addSortByInternal('russianTwist', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByShuttleSprintLateralHop() {
    return addSortByInternal('shuttleSprintLateralHop', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByShuttleSprintLateralHopDesc() {
    return addSortByInternal('shuttleSprintLateralHop', Sort.desc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenBySquatPress() {
    return addSortByInternal('squatPress', Sort.asc);
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenBySquatPressDesc() {
    return addSortByInternal('squatPress', Sort.desc);
  }
}

extension ScoreCardQueryWhereDistinct
    on QueryBuilder<ScoreCard, ScoreCard, QDistinct> {
  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByBenchHops() {
    return addDistinctByInternal('benchHops');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByBoxJumpBurpee() {
    return addDistinctByInternal('boxJumpBurpee');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByChinUps() {
    return addDistinctByInternal('chinUps');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByDate() {
    return addDistinctByInternal('date');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct>
      distinctByDeadBallOverTheShoulder() {
    return addDistinctByInternal('deadBallOverTheShoulder');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByKneeTuckPushUps() {
    return addDistinctByInternal('kneeTuckPushUps');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByLateralHops() {
    return addDistinctByInternal('lateralHops');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByRower() {
    return addDistinctByInternal('rower');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByRussianTwist() {
    return addDistinctByInternal('russianTwist');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct>
      distinctByShuttleSprintLateralHop() {
    return addDistinctByInternal('shuttleSprintLateralHop');
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctBySquatPress() {
    return addDistinctByInternal('squatPress');
  }
}

extension ScoreCardQueryProperty
    on QueryBuilder<ScoreCard, ScoreCard, QQueryProperty> {
  QueryBuilder<ScoreCard, int, QQueryOperations> benchHopsProperty() {
    return addPropertyNameInternal('benchHops');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> boxJumpBurpeeProperty() {
    return addPropertyNameInternal('boxJumpBurpee');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> chinUpsProperty() {
    return addPropertyNameInternal('chinUps');
  }

  QueryBuilder<ScoreCard, DateTime, QQueryOperations> dateProperty() {
    return addPropertyNameInternal('date');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations>
      deadBallOverTheShoulderProperty() {
    return addPropertyNameInternal('deadBallOverTheShoulder');
  }

  QueryBuilder<ScoreCard, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> kneeTuckPushUpsProperty() {
    return addPropertyNameInternal('kneeTuckPushUps');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> lateralHopsProperty() {
    return addPropertyNameInternal('lateralHops');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> rowerProperty() {
    return addPropertyNameInternal('rower');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> russianTwistProperty() {
    return addPropertyNameInternal('russianTwist');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations>
      shuttleSprintLateralHopProperty() {
    return addPropertyNameInternal('shuttleSprintLateralHop');
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> squatPressProperty() {
    return addPropertyNameInternal('squatPress');
  }
}
