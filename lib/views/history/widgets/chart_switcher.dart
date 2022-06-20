import 'package:flutter/material.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/history/provider/history.provider.dart';
import 'package:provider/provider.dart';

class HistoryChartSwitcher extends StatelessWidget {
  const HistoryChartSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HistoryProvider>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.paddingDefault),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Chart Data',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          DropdownButton<ChartDataSource>(
            value: provider.activeChartDataSource,
            items: ChartDataSource.values.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(e.name),
              );
            }).toList(),
            onChanged: (c) =>
                context.read<HistoryProvider>().updateChartData(c!),
          )
        ],
      ),
    );
  }
}
