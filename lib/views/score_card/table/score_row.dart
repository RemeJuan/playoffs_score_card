part of "score_table.dart";

class ScoreRow extends StatelessWidget {
  final String event;
  final int reps;
  final int maxReps;
  final double score;
  final Function(String) onChanged;

  const ScoreRow({
    required this.event,
    required this.reps,
    required this.maxReps,
    required this.score,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(top: AppTheme.paddingDefault),
      padding: const EdgeInsets.symmetric(
        vertical: AppTheme.paddingDefault * 2,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          return Row(
            children: [
              SizedBox(
                width: width * 0.4,
                child: Text(event),
              ),
              SizedBox(
                width: width * 0.3,
                child: TextFormField(
                  key: Key("${key}_input"),
                  initialValue: reps == -1 ? "" : reps.toString(),
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                      bottom: AppTheme.paddingDefault * 0.5,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      onChanged(value);
                    } else {
                      onChanged("0");
                    }
                  },
                ),
              ),
              Container(
                width: width * 0.3,
                alignment: Alignment.centerRight,
                child: Text("$score / 100"),
              ),
            ],
          );
        },
      ),
    );
  }
}
