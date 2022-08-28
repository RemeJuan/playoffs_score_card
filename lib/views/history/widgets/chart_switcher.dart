import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/history/provider/history.provider.dart';

class HistoryChartSwitcher extends ConsumerWidget {
  const HistoryChartSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final provider = ref.watch(historyProvider);

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
            onChanged: (c) => provider.updateChartData(c!),
          )
        ],
      ),
    );
  }
}
