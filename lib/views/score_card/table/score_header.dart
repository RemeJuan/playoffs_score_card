part of "score_table.dart";

class ScoreHeader extends StatelessWidget {
  const ScoreHeader({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppTheme.paddingDefault,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          top: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width * 0.4,
              child: Text("Event", style: _style),
            ),
            SizedBox(
              width: width * 0.3,
              child: Text("Reps", style: _style),
            ),
            Container(
              width: width * 0.3,
              alignment: Alignment.centerRight,
              child: Text("Score", style: _style),
            ),
          ],
        );
      }),
    );
  }

  final TextStyle _style = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
}
