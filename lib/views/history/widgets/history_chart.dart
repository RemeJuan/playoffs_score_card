import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/history/provider/history.provider.dart';
import 'package:provider/provider.dart';

class HistoryChart extends StatelessWidget {
  const HistoryChart({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final provider = context.watch<HistoryProvider>();

    return Container(
      padding: const EdgeInsets.only(left: AppTheme.paddingDefault * 1.5),
      margin: const EdgeInsets.symmetric(
        vertical: AppTheme.paddingDefault * 1.5,
      ),
      child: Sparkline(
        enableGridLines: true,
        data: provider.chartData.map((e) => e).toList(),
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
