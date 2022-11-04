// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'score_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScoreCardState {
  DateTime get date => throw _privateConstructorUsedError;
  MaxScoresModel get maxScores => throw _privateConstructorUsedError;
  RepsModel get reps => throw _privateConstructorUsedError;
  ScoresModel get score => throw _privateConstructorUsedError;
  double get totalScore => throw _privateConstructorUsedError;
  ScoreCardStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreCardStateCopyWith<ScoreCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCardStateCopyWith<$Res> {
  factory $ScoreCardStateCopyWith(
          ScoreCardState value, $Res Function(ScoreCardState) then) =
      _$ScoreCardStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      MaxScoresModel maxScores,
      RepsModel reps,
      ScoresModel score,
      double totalScore,
      ScoreCardStatus status});

  $RepsModelCopyWith<$Res> get reps;
  $ScoresModelCopyWith<$Res> get score;
}

/// @nodoc
class _$ScoreCardStateCopyWithImpl<$Res>
    implements $ScoreCardStateCopyWith<$Res> {
  _$ScoreCardStateCopyWithImpl(this._value, this._then);

  final ScoreCardState _value;
  // ignore: unused_field
  final $Res Function(ScoreCardState) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? maxScores = freezed,
    Object? reps = freezed,
    Object? score = freezed,
    Object? totalScore = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxScores: maxScores == freezed
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as MaxScoresModel,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsModel,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoresModel,
      totalScore: totalScore == freezed
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScoreCardStatus,
    ));
  }

  @override
  $RepsModelCopyWith<$Res> get reps {
    return $RepsModelCopyWith<$Res>(_value.reps, (value) {
      return _then(_value.copyWith(reps: value));
    });
  }

  @override
  $ScoresModelCopyWith<$Res> get score {
    return $ScoresModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
    });
  }
}

/// @nodoc
abstract class _$ScoreCardStateCopyWith<$Res>
    implements $ScoreCardStateCopyWith<$Res> {
  factory _$ScoreCardStateCopyWith(
          _ScoreCardState value, $Res Function(_ScoreCardState) then) =
      __$ScoreCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      MaxScoresModel maxScores,
      RepsModel reps,
      ScoresModel score,
      double totalScore,
      ScoreCardStatus status});

  @override
  $RepsModelCopyWith<$Res> get reps;
  @override
  $ScoresModelCopyWith<$Res> get score;
}

/// @nodoc
class __$ScoreCardStateCopyWithImpl<$Res>
    extends _$ScoreCardStateCopyWithImpl<$Res>
    implements _$ScoreCardStateCopyWith<$Res> {
  __$ScoreCardStateCopyWithImpl(
      _ScoreCardState _value, $Res Function(_ScoreCardState) _then)
      : super(_value, (v) => _then(v as _ScoreCardState));

  @override
  _ScoreCardState get _value => super._value as _ScoreCardState;

  @override
  $Res call({
    Object? date = freezed,
    Object? maxScores = freezed,
    Object? reps = freezed,
    Object? score = freezed,
    Object? totalScore = freezed,
    Object? status = freezed,
  }) {
    return _then(_ScoreCardState(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxScores: maxScores == freezed
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as MaxScoresModel,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsModel,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoresModel,
      totalScore: totalScore == freezed
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScoreCardStatus,
    ));
  }
}

/// @nodoc

class _$_ScoreCardState implements _ScoreCardState {
  const _$_ScoreCardState(
      {required this.date,
      required this.maxScores,
      required this.reps,
      required this.score,
      required this.totalScore,
      required this.status});

  @override
  final DateTime date;
  @override
  final MaxScoresModel maxScores;
  @override
  final RepsModel reps;
  @override
  final ScoresModel score;
  @override
  final double totalScore;
  @override
  final ScoreCardStatus status;

  @override
  String toString() {
    return 'ScoreCardState(date: $date, maxScores: $maxScores, reps: $reps, score: $score, totalScore: $totalScore, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScoreCardState &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.maxScores, maxScores) &&
            const DeepCollectionEquality().equals(other.reps, reps) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality()
                .equals(other.totalScore, totalScore) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(maxScores),
      const DeepCollectionEquality().hash(reps),
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(totalScore),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ScoreCardStateCopyWith<_ScoreCardState> get copyWith =>
      __$ScoreCardStateCopyWithImpl<_ScoreCardState>(this, _$identity);
}

abstract class _ScoreCardState implements ScoreCardState {
  const factory _ScoreCardState(
      {required final DateTime date,
      required final MaxScoresModel maxScores,
      required final RepsModel reps,
      required final ScoresModel score,
      required final double totalScore,
      required final ScoreCardStatus status}) = _$_ScoreCardState;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  MaxScoresModel get maxScores => throw _privateConstructorUsedError;
  @override
  RepsModel get reps => throw _privateConstructorUsedError;
  @override
  ScoresModel get score => throw _privateConstructorUsedError;
  @override
  double get totalScore => throw _privateConstructorUsedError;
  @override
  ScoreCardStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreCardStateCopyWith<_ScoreCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
