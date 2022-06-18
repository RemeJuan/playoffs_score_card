part of "score_table.dart";

class ScoreHeader extends StatelessWidget {
  const ScoreHeader({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppTheme.paddingDefault,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Event", style: _style),
          Text("Reps", style: _style),
          Text("Score (Max 100)", style: _style),
        ],
      ),
    );
  }

  final TextStyle _style = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
