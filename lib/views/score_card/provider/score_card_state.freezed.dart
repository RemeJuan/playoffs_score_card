// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$ScoreCardStateCopyWithImpl<$Res, ScoreCardState>;
  @useResult
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
class _$ScoreCardStateCopyWithImpl<$Res, $Val extends ScoreCardState>
    implements $ScoreCardStateCopyWith<$Res> {
  _$ScoreCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? maxScores = null,
    Object? reps = null,
    Object? score = null,
    Object? totalScore = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxScores: null == maxScores
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as MaxScoresModel,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsModel,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoresModel,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScoreCardStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepsModelCopyWith<$Res> get reps {
    return $RepsModelCopyWith<$Res>(_value.reps, (value) {
      return _then(_value.copyWith(reps: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoresModelCopyWith<$Res> get score {
    return $ScoresModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScoreCardStateCopyWith<$Res>
    implements $ScoreCardStateCopyWith<$Res> {
  factory _$$_ScoreCardStateCopyWith(
          _$_ScoreCardState value, $Res Function(_$_ScoreCardState) then) =
      __$$_ScoreCardStateCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_ScoreCardStateCopyWithImpl<$Res>
    extends _$ScoreCardStateCopyWithImpl<$Res, _$_ScoreCardState>
    implements _$$_ScoreCardStateCopyWith<$Res> {
  __$$_ScoreCardStateCopyWithImpl(
      _$_ScoreCardState _value, $Res Function(_$_ScoreCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? maxScores = null,
    Object? reps = null,
    Object? score = null,
    Object? totalScore = null,
    Object? status = null,
  }) {
    return _then(_$_ScoreCardState(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxScores: null == maxScores
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as MaxScoresModel,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsModel,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoresModel,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
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
            other is _$_ScoreCardState &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.maxScores, maxScores) ||
                other.maxScores == maxScores) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, maxScores, reps, score, totalScore, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreCardStateCopyWith<_$_ScoreCardState> get copyWith =>
      __$$_ScoreCardStateCopyWithImpl<_$_ScoreCardState>(this, _$identity);
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
  DateTime get date;
  @override
  MaxScoresModel get maxScores;
  @override
  RepsModel get reps;
  @override
  ScoresModel get score;
  @override
  double get totalScore;
  @override
  ScoreCardStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreCardStateCopyWith<_$_ScoreCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
