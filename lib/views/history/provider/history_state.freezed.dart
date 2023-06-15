// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryState {
  List<double> get chartData => throw _privateConstructorUsedError;
  List<ScoreCard> get scores => throw _privateConstructorUsedError;
  ChartDataSource get activeChartDataSource =>
      throw _privateConstructorUsedError;
  MaxScoresModel get maxScores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {List<double> chartData,
      List<ScoreCard> scores,
      ChartDataSource activeChartDataSource,
      MaxScoresModel maxScores});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartData = null,
    Object? scores = null,
    Object? activeChartDataSource = null,
    Object? maxScores = null,
  }) {
    return _then(_value.copyWith(
      chartData: null == chartData
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<double>,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<ScoreCard>,
      activeChartDataSource: null == activeChartDataSource
          ? _value.activeChartDataSource
          : activeChartDataSource // ignore: cast_nullable_to_non_nullable
              as ChartDataSource,
      maxScores: null == maxScores
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as MaxScoresModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$_HistoryStateCopyWith(
          _$_HistoryState value, $Res Function(_$_HistoryState) then) =
      __$$_HistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<double> chartData,
      List<ScoreCard> scores,
      ChartDataSource activeChartDataSource,
      MaxScoresModel maxScores});
}

/// @nodoc
class __$$_HistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryState>
    implements _$$_HistoryStateCopyWith<$Res> {
  __$$_HistoryStateCopyWithImpl(
      _$_HistoryState _value, $Res Function(_$_HistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartData = null,
    Object? scores = null,
    Object? activeChartDataSource = null,
    Object? maxScores = null,
  }) {
    return _then(_$_HistoryState(
      chartData: null == chartData
          ? _value._chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<double>,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<ScoreCard>,
      activeChartDataSource: null == activeChartDataSource
          ? _value.activeChartDataSource
          : activeChartDataSource // ignore: cast_nullable_to_non_nullable
              as ChartDataSource,
      maxScores: null == maxScores
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as MaxScoresModel,
    ));
  }
}

/// @nodoc

class _$_HistoryState implements _HistoryState {
  const _$_HistoryState(
      {required final List<double> chartData,
      required final List<ScoreCard> scores,
      required this.activeChartDataSource,
      required this.maxScores})
      : _chartData = chartData,
        _scores = scores;

  final List<double> _chartData;
  @override
  List<double> get chartData {
    if (_chartData is EqualUnmodifiableListView) return _chartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartData);
  }

  final List<ScoreCard> _scores;
  @override
  List<ScoreCard> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  final ChartDataSource activeChartDataSource;
  @override
  final MaxScoresModel maxScores;

  @override
  String toString() {
    return 'HistoryState(chartData: $chartData, scores: $scores, activeChartDataSource: $activeChartDataSource, maxScores: $maxScores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryState &&
            const DeepCollectionEquality()
                .equals(other._chartData, _chartData) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            (identical(other.activeChartDataSource, activeChartDataSource) ||
                other.activeChartDataSource == activeChartDataSource) &&
            (identical(other.maxScores, maxScores) ||
                other.maxScores == maxScores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chartData),
      const DeepCollectionEquality().hash(_scores),
      activeChartDataSource,
      maxScores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      __$$_HistoryStateCopyWithImpl<_$_HistoryState>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
      {required final List<double> chartData,
      required final List<ScoreCard> scores,
      required final ChartDataSource activeChartDataSource,
      required final MaxScoresModel maxScores}) = _$_HistoryState;

  @override
  List<double> get chartData;
  @override
  List<ScoreCard> get scores;
  @override
  ChartDataSource get activeChartDataSource;
  @override
  MaxScoresModel get maxScores;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
