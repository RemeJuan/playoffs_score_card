import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/history/provider/history_notifier.dart';

class HistoryChart extends ConsumerWidget {
  const HistoryChart({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final chartData = ref.watch(historyProvider.select((v) => v.chartData));

    return Container(
      padding: const EdgeInsets.only(left: AppTheme.paddingDefault * 1.5),
      margin: const EdgeInsets.symmetric(
        vertical: AppTheme.paddingDefault * 1.5,
      ),
      child: Sparkline(
        key: const Key('history_chart'),
        enableGridLines: true,
        data: chartData.map((e) => e).toList(),
        pointsMode: PointsMode.all,
        pointSize: 5,
        pointColor: AppTheme.darkerRed,
        useCubicSmoothing: true,
        cubicSmoothingFactor: 0.2,
        lineColor: AppTheme.blue,
      ),
    );
  }
}
