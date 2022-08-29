part of "package:playoffs_score_card/app_landing.dart";

void _showAboutDialog(BuildContext context, String version) {
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
                    "You can tap on the date to change it and add your past entries in to get more details on the history view.",
                style: TextStyle(
                  color: Colors.black,
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
              const TextSpan(
                text: "\n\n",
              ),
              TextSpan(
                text: "App version: $version",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
