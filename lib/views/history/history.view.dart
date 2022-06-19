import 'package:flutter/material.dart';
import 'package:playoffs_score_tracker/locator.dart';
import 'package:playoffs_score_tracker/views/history/provider/history.provider.dart';
import 'package:playoffs_score_tracker/views/history/widgets/history_chart.dart';
import 'package:playoffs_score_tracker/views/history/widgets/history_entry.dart';
import 'package:provider/provider.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return ChangeNotifierProvider<HistoryProvider>.value(
      value: sl<HistoryProvider>()..init(),
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
    );
  }
}
