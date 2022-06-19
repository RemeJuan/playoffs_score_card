import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:playoffs_score_tracker/schemas/score_card.schema.dart';
import 'package:playoffs_score_tracker/theme.dart';

class HistoryEntry extends StatelessWidget {
  final ScoreCard score;

  const HistoryEntry({required this.score, Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final date = DateFormat("d MMMM yyyy").format(score.date);

    return InkWell(
      onTap: () {
        print("Tapped on ${score.id}");
      },
      child: Container(
        padding: const EdgeInsets.all(AppTheme.paddingDefault),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              date,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
            Text(
              "${score.totalScore} / 1000",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: AppTheme.paddingDefault),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
