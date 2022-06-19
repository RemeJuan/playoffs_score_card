import 'package:flutter/material.dart';
import 'package:playoffs_score_tracker/locator.dart';
import 'package:playoffs_score_tracker/router/router_provider.dart';
import 'package:playoffs_score_tracker/theme.dart';
import 'package:playoffs_score_tracker/themes/default.template.dart';
import 'package:playoffs_score_tracker/views/score_card/provider/score_card_provider.dart';
import 'package:playoffs_score_tracker/views/score_card/table/score_table.dart';
import 'package:provider/provider.dart';

class ScoreCardView extends StatelessWidget {
  const ScoreCardView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return ChangeNotifierProvider<ScoreCardProvider>.value(
      value: sl<ScoreCardProvider>(),
      child: Consumer<ScoreCardProvider>(
        builder: (context, provider, _) {
          final status = provider.status;
          final canSave = status == ScoreCardStatus.complete;

          if (status == ScoreCardStatus.saved) {
            _navigate();
          }

          return DefaultTemplate(
            title: "Score Card",
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.all(AppTheme.paddingDefault * 2),
                  alignment: Alignment.center,
                  child: Text(
                    "Total Score: ${provider.totalScore}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Expanded(child: ScoreTable()),
                const SizedBox(height: AppTheme.paddingDefault),
                ElevatedButton(
                  onPressed: canSave ? provider.save : null,
                  child: const Text("Save"),
                ),
                const SizedBox(height: AppTheme.paddingDefault),
              ],
            ),
          );
        },
      ),
    );
  }

  void _navigate() async {
    await Future.delayed(const Duration(milliseconds: 10));
    sl<RouterProvider>().setCurrentIndex(1);
  }
}
