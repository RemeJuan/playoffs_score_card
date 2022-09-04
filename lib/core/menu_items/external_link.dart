part of "package:playoffs_score_card/app_landing.dart";

List<TextSpan> _externalLink(
  String text,
  String url, [
  bool pipe = true,
]) {
  return [
    TextSpan(
      text: text,
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          launchUrl(
            Uri.parse(url),
            mode: LaunchMode.externalApplication,
          );
        },
      style: TextStyle(
        color: AppTheme.blue,
        decoration: TextDecoration.underline,
      ),
    ),
    if (pipe)
      const TextSpan(
        text: " | ",
        style: TextStyle(color: Colors.black),
      ),
  ];
}
