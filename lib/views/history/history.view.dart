import 'package:flutter/material.dart';
import 'package:playoffs_score_card/locator.dart';
import 'package:playoffs_score_card/views/history/provider/history.provider.dart';
import 'package:playoffs_score_card/views/history/widgets/history_chart.dart';
import 'package:playoffs_score_card/views/history/widgets/history_entry.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final provider = sl<HistoryProvider>()..init();

    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 1.0) {
          provider.init();
        }
      },
      child: ChangeNotifierProvider<HistoryProvider>.value(
        value: provider,
        child: Consumer<HistoryProvider>(
          builder: (context, provider, _) {
            return Column(
              children: [
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
            );
          },
        ),
      ),
    );
  }
}
