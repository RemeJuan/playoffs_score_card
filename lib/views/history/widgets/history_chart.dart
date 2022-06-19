import 'package:flutter/material.dart';
import 'package:line_chart/charts/line-chart.widget.dart';
import 'package:line_chart/model/line-chart.model.dart';
import 'package:playoffs_score_tracker/theme.dart';
import 'package:playoffs_score_tracker/views/history/provider/history.provider.dart';
import 'package:provider/provider.dart';

class HistoryChart extends StatelessWidget {
  const HistoryChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HistoryProvider>();

    return LineChart(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      insidePadding: AppTheme.paddingDefault * 2,
      data: provider.scores.reversed
          .map(
            (e) => LineChartModel(
              date: e.date,
              amount: e.totalScore.toDouble(),
            ),
          )
          .toList(),
      linePaint: Paint()
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke
        ..color = AppTheme.blue,
      circlePaint: Paint()..color = AppTheme.darkerRed,
      circleRadiusValue: 3,
      showPointer: true,
      showCircles: true,
    );
  }
}
