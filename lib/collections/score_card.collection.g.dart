// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_card.collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetScoreCardCollection on Isar {
  IsarCollection<ScoreCard> get scoreCards => this.collection();
}

const ScoreCardSchema = CollectionSchema(
  name: r'ScoreCard',
  id: -8974888109775924407,
  properties: {
    r'benchHops': PropertySchema(
      id: 0,
      name: r'benchHops',
      type: IsarType.long,
    ),
    r'boxJumpBurpee': PropertySchema(
      id: 1,
      name: r'boxJumpBurpee',
      type: IsarType.long,
    ),
    r'chinUps': PropertySchema(
      id: 2,
      name: r'chinUps',
      type: IsarType.long,
    ),
    r'date': PropertySchema(
      id: 3,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'deadBallOverTheShoulder': PropertySchema(
      id: 4,
      name: r'deadBallOverTheShoulder',
      type: IsarType.long,
    ),
    r'kneeTuckPushUps': PropertySchema(
      id: 5,
      name: r'kneeTuckPushUps',
      type: IsarType.long,
    ),
    r'lateralHops': PropertySchema(
      id: 6,
      name: r'lateralHops',
      type: IsarType.long,
    ),
    r'rower': PropertySchema(
      id: 7,
      name: r'rower',
      type: IsarType.long,
    ),
    r'russianTwist': PropertySchema(
      id: 8,
      name: r'russianTwist',
      type: IsarType.long,
    ),
    r'shuttleSprintLateralHop': PropertySchema(
      id: 9,
      name: r'shuttleSprintLateralHop',
      type: IsarType.long,
    ),
    r'squatPress': PropertySchema(
      id: 10,
      name: r'squatPress',
      type: IsarType.long,
    )
  },
  estimateSize: _scoreCardEstimateSize,
  serialize: _scoreCardSerialize,
  deserialize: _scoreCardDeserialize,
  deserializeProp: _scoreCardDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _scoreCardGetId,
  getLinks: _scoreCardGetLinks,
  attach: _scoreCardAttach,
  version: '3.1.0+1',
);

int _scoreCardEstimateSize(
  ScoreCard object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _scoreCardSerialize(
  ScoreCard object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.benchHops);
  writer.writeLong(offsets[1], object.boxJumpBurpee);
  writer.writeLong(offsets[2], object.chinUps);
  writer.writeDateTime(offsets[3], object.date);
  writer.writeLong(offsets[4], object.deadBallOverTheShoulder);
  writer.writeLong(offsets[5], object.kneeTuckPushUps);
  writer.writeLong(offsets[6], object.lateralHops);
  writer.writeLong(offsets[7], object.rower);
  writer.writeLong(offsets[8], object.russianTwist);
  writer.writeLong(offsets[9], object.shuttleSprintLateralHop);
  writer.writeLong(offsets[10], object.squatPress);
}

ScoreCard _scoreCardDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
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

P _scoreCardDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
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
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _scoreCardGetId(ScoreCard object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _scoreCardGetLinks(ScoreCard object) {
  return [];
}

void _scoreCardAttach(IsarCollection<dynamic> col, Id id, ScoreCard object) {
  object.id = id;
}

extension ScoreCardQueryWhereSort
    on QueryBuilder<ScoreCard, ScoreCard, QWhere> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ScoreCardQueryWhere
    on QueryBuilder<ScoreCard, ScoreCard, QWhereClause> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ScoreCardQueryFilter
    on QueryBuilder<ScoreCard, ScoreCard, QFilterCondition> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> benchHopsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'benchHops',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      benchHopsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'benchHops',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> benchHopsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'benchHops',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> benchHopsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'benchHops',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boxJumpBurpee',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'boxJumpBurpee',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'boxJumpBurpee',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      boxJumpBurpeeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'boxJumpBurpee',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chinUps',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chinUps',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chinUps',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> chinUpsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chinUps',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deadBallOverTheShoulder',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deadBallOverTheShoulder',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deadBallOverTheShoulder',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      deadBallOverTheShoulderBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deadBallOverTheShoulder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kneeTuckPushUps',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kneeTuckPushUps',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kneeTuckPushUps',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      kneeTuckPushUpsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kneeTuckPushUps',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> lateralHopsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lateralHops',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      lateralHopsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lateralHops',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> lateralHopsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lateralHops',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> lateralHopsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lateralHops',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rower',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rower',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rower',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> rowerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rower',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> russianTwistEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'russianTwist',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      russianTwistGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'russianTwist',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      russianTwistLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'russianTwist',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> russianTwistBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'russianTwist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shuttleSprintLateralHop',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shuttleSprintLateralHop',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shuttleSprintLateralHop',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      shuttleSprintLateralHopBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shuttleSprintLateralHop',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> squatPressEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'squatPress',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition>
      squatPressGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'squatPress',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> squatPressLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'squatPress',
        value: value,
      ));
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterFilterCondition> squatPressBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'squatPress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ScoreCardQueryObject
    on QueryBuilder<ScoreCard, ScoreCard, QFilterCondition> {}

extension ScoreCardQueryLinks
    on QueryBuilder<ScoreCard, ScoreCard, QFilterCondition> {}

extension ScoreCardQuerySortBy on QueryBuilder<ScoreCard, ScoreCard, QSortBy> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBenchHops() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'benchHops', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBenchHopsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'benchHops', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBoxJumpBurpee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxJumpBurpee', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByBoxJumpBurpeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxJumpBurpee', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByChinUps() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chinUps', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByChinUpsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chinUps', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByDeadBallOverTheShoulder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadBallOverTheShoulder', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByDeadBallOverTheShoulderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadBallOverTheShoulder', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByKneeTuckPushUps() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kneeTuckPushUps', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByKneeTuckPushUpsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kneeTuckPushUps', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByLateralHops() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lateralHops', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByLateralHopsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lateralHops', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRower() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rower', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRowerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rower', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRussianTwist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'russianTwist', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortByRussianTwistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'russianTwist', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByShuttleSprintLateralHop() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shuttleSprintLateralHop', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      sortByShuttleSprintLateralHopDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shuttleSprintLateralHop', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortBySquatPress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'squatPress', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> sortBySquatPressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'squatPress', Sort.desc);
    });
  }
}

extension ScoreCardQuerySortThenBy
    on QueryBuilder<ScoreCard, ScoreCard, QSortThenBy> {
  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBenchHops() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'benchHops', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBenchHopsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'benchHops', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBoxJumpBurpee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxJumpBurpee', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByBoxJumpBurpeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxJumpBurpee', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByChinUps() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chinUps', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByChinUpsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chinUps', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByDeadBallOverTheShoulder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadBallOverTheShoulder', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByDeadBallOverTheShoulderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadBallOverTheShoulder', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByKneeTuckPushUps() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kneeTuckPushUps', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByKneeTuckPushUpsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kneeTuckPushUps', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByLateralHops() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lateralHops', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByLateralHopsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lateralHops', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRower() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rower', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRowerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rower', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRussianTwist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'russianTwist', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenByRussianTwistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'russianTwist', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByShuttleSprintLateralHop() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shuttleSprintLateralHop', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy>
      thenByShuttleSprintLateralHopDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shuttleSprintLateralHop', Sort.desc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenBySquatPress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'squatPress', Sort.asc);
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QAfterSortBy> thenBySquatPressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'squatPress', Sort.desc);
    });
  }
}

extension ScoreCardQueryWhereDistinct
    on QueryBuilder<ScoreCard, ScoreCard, QDistinct> {
  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByBenchHops() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'benchHops');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByBoxJumpBurpee() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boxJumpBurpee');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByChinUps() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chinUps');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct>
      distinctByDeadBallOverTheShoulder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deadBallOverTheShoulder');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByKneeTuckPushUps() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kneeTuckPushUps');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByLateralHops() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lateralHops');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByRower() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rower');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctByRussianTwist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'russianTwist');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct>
      distinctByShuttleSprintLateralHop() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shuttleSprintLateralHop');
    });
  }

  QueryBuilder<ScoreCard, ScoreCard, QDistinct> distinctBySquatPress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'squatPress');
    });
  }
}

extension ScoreCardQueryProperty
    on QueryBuilder<ScoreCard, ScoreCard, QQueryProperty> {
  QueryBuilder<ScoreCard, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> benchHopsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'benchHops');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> boxJumpBurpeeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boxJumpBurpee');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> chinUpsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chinUps');
    });
  }

  QueryBuilder<ScoreCard, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations>
      deadBallOverTheShoulderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deadBallOverTheShoulder');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> kneeTuckPushUpsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kneeTuckPushUps');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> lateralHopsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lateralHops');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> rowerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rower');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> russianTwistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'russianTwist');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations>
      shuttleSprintLateralHopProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shuttleSprintLateralHop');
    });
  }

  QueryBuilder<ScoreCard, int, QQueryOperations> squatPressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'squatPress');
    });
  }
}
