import 'package:flutter/material.dart';

class ScoreDetailsRow extends StatelessWidget {
  final String name;
  final int score;
  final int maxScore;

  const ScoreDetailsRow({
    required this.name,
    required this.score,
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
            "${_calculateReps()}",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.2,
          child: Text(
            "$score / 100",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  int _calculateReps() {
    return ((score / 100) * maxScore).round();
  }
}
