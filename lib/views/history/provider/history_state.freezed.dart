// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call(
      {List<double> chartData,
      List<ScoreCard> scores,
      ChartDataSource activeChartDataSource,
      MaxScoresModel maxScores});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? chartData = freezed,
    Object? scores = freezed,
    Object? activeChartDataSource = freezed,
    Object? maxScores = freezed,
  }) {
    return _then(_value.copyWith(
      chartData: chartData == freezed
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<double>,
      scores: scores == freezed
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<ScoreCard>,
      activeChartDataSource: activeChartDataSource == freezed
          ? _value.activeChartDataSource
          : activeChartDataSource // ignore: cast_nullable_to_non_nullable
              as ChartDataSource,
      maxScores: maxScores == freezed
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as MaxScoresModel,
    ));
  }
}

/// @nodoc
abstract class _$HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(
          _HistoryState value, $Res Function(_HistoryState) then) =
      __$HistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<double> chartData,
      List<ScoreCard> scores,
      ChartDataSource activeChartDataSource,
      MaxScoresModel maxScores});
}

/// @nodoc
class __$HistoryStateCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(
      _HistoryState _value, $Res Function(_HistoryState) _then)
      : super(_value, (v) => _then(v as _HistoryState));

  @override
  _HistoryState get _value => super._value as _HistoryState;

  @override
  $Res call({
    Object? chartData = freezed,
    Object? scores = freezed,
    Object? activeChartDataSource = freezed,
    Object? maxScores = freezed,
  }) {
    return _then(_HistoryState(
      chartData: chartData == freezed
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<double>,
      scores: scores == freezed
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<ScoreCard>,
      activeChartDataSource: activeChartDataSource == freezed
          ? _value.activeChartDataSource
          : activeChartDataSource // ignore: cast_nullable_to_non_nullable
              as ChartDataSource,
      maxScores: maxScores == freezed
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartData);
  }

  final List<ScoreCard> _scores;
  @override
  List<ScoreCard> get scores {
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
            other is _HistoryState &&
            const DeepCollectionEquality().equals(other.chartData, chartData) &&
            const DeepCollectionEquality().equals(other.scores, scores) &&
            const DeepCollectionEquality()
                .equals(other.activeChartDataSource, activeChartDataSource) &&
            const DeepCollectionEquality().equals(other.maxScores, maxScores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chartData),
      const DeepCollectionEquality().hash(scores),
      const DeepCollectionEquality().hash(activeChartDataSource),
      const DeepCollectionEquality().hash(maxScores));

  @JsonKey(ignore: true)
  @override
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
      {required final List<double> chartData,
      required final List<ScoreCard> scores,
      required final ChartDataSource activeChartDataSource,
      required final MaxScoresModel maxScores}) = _$_HistoryState;

  @override
  List<double> get chartData => throw _privateConstructorUsedError;
  @override
  List<ScoreCard> get scores => throw _privateConstructorUsedError;
  @override
  ChartDataSource get activeChartDataSource =>
      throw _privateConstructorUsedError;
  @override
  MaxScoresModel get maxScores => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
