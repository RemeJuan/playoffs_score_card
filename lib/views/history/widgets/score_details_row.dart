import 'package:flutter/material.dart';
import 'package:playoffs_score_card/core/utils/utils.dart';

class ScoreDetailsRow extends StatelessWidget {
  final String name;
  final int reps;
  final int maxScore;

  const ScoreDetailsRow({
    required this.name,
    required this.reps,
    required this.maxScore,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    final width = MediaQuery.of(context).size.width * 0.8;

    return Row(
      children: [
        SizedBox(
          width: width * 0.6,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.2,
          child: Text(
            "$reps",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.2,
          child: Text(
            "${CoreUtils.calcScore(reps, maxScore)} / 100",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
