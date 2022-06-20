import 'package:flutter/material.dart';

class ScoreDetailsHeader extends StatelessWidget {
  const ScoreDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final width = MediaQuery.of(context).size.width * 0.8;
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: width * 0.6, child: const Text("Event")),
        SizedBox(width: width * 0.2, child: const Text("Reps")),
        SizedBox(width: width * 0.2, child: const Text("Score")),
      ],
    );
  }
}
