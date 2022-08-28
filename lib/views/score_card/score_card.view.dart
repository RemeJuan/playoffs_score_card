import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:playoffs_score_card/core/providers/general_providers.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/themes/default.template.dart';
import 'package:playoffs_score_card/views/score_card/provider/score_card_provider.dart';
import 'package:playoffs_score_card/views/score_card/table/score_table.dart';

class ScoreCardView extends ConsumerWidget {
  const ScoreCardView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final provider = ref.watch(scoreCardProvider);

    final status = provider.status;
    final canSave = status == ScoreCardStatus.complete;

    if (status == ScoreCardStatus.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (status == ScoreCardStatus.saved) {
      _navigate(ref);
    }

    final date = DateFormat("d MMM yyyy").format(provider.date);

    return DefaultTemplate(
      title: "Score Card",
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(
              AppTheme.paddingDefault * 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Score: ${provider.totalScore}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () => _showDatePicker(context, ref),
                  child: Text(
                    date,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
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
  }

  void _navigate(WidgetRef ref) async {
    await Future.delayed(const Duration(milliseconds: 10));
    ref.read(routerProvider.notifier).state = 1;
  }

  void _showDatePicker(BuildContext context, WidgetRef ref) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(DateTime.now().day),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: AppTheme.materialBlue,
            ),
          ),
          child: child!,
        );
      },
    );

    await Future.delayed(const Duration(milliseconds: 10));
    ref.read(scoreCardProvider).addPreviousScore(date!);
  }
}
