part of "package:playoffs_score_card/app_landing.dart";

PopupMenuItem _about() {
  return PopupMenuItem(
    value: "about",
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.info_outline,
          size: 14.0,
        ),
        SizedBox(width: AppTheme.paddingDefault * 0.5),
        Text(
          "About",
          style: TextStyle(fontSize: 14.0),
        ),
      ],
    ),
  );
}

PopupMenuItem _historyEntry() {
  return PopupMenuItem(
    value: "history",
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.scoreboard_outlined,
          size: 14.0,
        ),
        SizedBox(width: AppTheme.paddingDefault * 0.5),
        Text(
          "Add previous scores",
          style: TextStyle(fontSize: 14.0),
        ),
      ],
    ),
  );
}

void _showAboutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.8),
    builder: (_) {
      return AlertDialog(
        title: const Text("About"),
        content: RichText(
          softWrap: true,
          text: TextSpan(
            children: [
              const TextSpan(
                text:
                    "A simple web app for users to track their progress across the. ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "F45 Playoffs",
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrl(
                      Uri.parse("https://www.f45playoffs.com"),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                style: TextStyle(
                  color: AppTheme.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              const TextSpan(
                text: "\n\n",
              ),
              const TextSpan(
                text:
                    "This app is not owned by, created for or affiliated with, in any way, F45.",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const TextSpan(
                text: "\n\n",
              ),
              const TextSpan(
                text:
                    "This is a completely open source project, licensed under MIT. All code can be viewed ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "HERE",
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrl(
                      Uri.parse(
                          "https://github.com/RemeJuan/playoffs_score_card"),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                style: TextStyle(
                  color: AppTheme.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _showHistoryDialog(BuildContext context) async {
  final date = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2015),
    lastDate: DateTime(DateTime.now().year + 1),
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
  sl<ScoreCardProvider>().addPreviousScore(date!);
  await Future.delayed(const Duration(milliseconds: 10));
  sl<RouterProvider>().setCurrentIndex(0);
}