import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/history/history_details.view.dart';
import 'package:playoffs_score_card/views/history/provider/history_notifier.dart';

class HistoryEntry extends ConsumerWidget {
  final ScoreCard score;

  const HistoryEntry({required this.score, Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final date = DateFormat("d MMMM yyyy").format(score.date);

    return Dismissible(
      key: Key(score.id.toString()),
      background: Container(color: Colors.red),
      confirmDismiss: (_) => _confirmDelete(context),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        ref.read(historyProvider.notifier).removeScore(score);
      },
      child: InkWell(
        onTap: () => _showMaterialDialog(context),
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
      ),
    );
  }

  void _showMaterialDialog(BuildContext context) {
    final date = DateFormat("d MMMM yyyy").format(score.date);
    showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.8),
      builder: (_) {
        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          scrollable: true,
          title: Text("Score Details: $date"),
          content: SizedBox(
            child: HistoryDetailsView(score: score),
          ),
        );
      },
    );
  }

  Future<bool?> _confirmDelete(BuildContext context) async {
    final res = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Please Confirm'),
          content: const Text('Are you sure to remove the box?'),
          actions: [
            TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop(true);
                },
                child: const Text('Yes')),
            TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop(false);
                },
                child: const Text('No'))
          ],
        );
      },
    );

    return res;
  }
}
