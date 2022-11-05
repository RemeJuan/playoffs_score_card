import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playoffs_score_card/views/history/provider/history_notifier.dart';
import 'package:playoffs_score_card/views/history/widgets/chart_switcher.dart';
import 'package:playoffs_score_card/views/history/widgets/history_chart.dart';
import 'package:playoffs_score_card/views/history/widgets/history_entry.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HistoryView extends ConsumerWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final notifier = ref.read(historyProvider.notifier);
    final provider = ref.watch(historyProvider);

    return VisibilityDetector(
      key: const Key("history_view"),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 1.0) {
          notifier.getData();
        }
      },
      child: Column(
        children: [
          const HistoryChartSwitcher(),
          const HistoryChart(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: provider.scores.length,
              itemBuilder: (context, index) {
                final score = provider.scores[index];

                return HistoryEntry(score: score);
              },
            ),
          ),
        ],
      ),
    );
  }
}
