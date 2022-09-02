import 'dart:io';

void main() async {
  int fixes = 0;
  int features = 0;
  int breaks = 0;

  final regExp = RegExp(
    r'(break|feat|fix|none|chore|docs|style|refactor|perf|test|ci)\(.+\):\s.+',
  );

  final commitLog = await Process.run(
    "git",
    ["log", "-10", "--pretty=format:'%s',"],
    workingDirectory: Directory.current.path,
  );

  final commitMessages = commitLog.stdout
      .split(',\n')
      .where((String e) => !e.toLowerCase().contains('merge'))
      .toList()
      .where((String e) => regExp.hasMatch(e))
      .toList()
      .map((String e) => e.replaceAll("'", ""))
      .toList();

  for (final msg in commitMessages) {
    if (msg.startsWith('break')) breaks++;
    if (msg.startsWith('feat')) features++;
    if (msg.startsWith('fix')) fixes++;
  }

  if (breaks > 0) {
    updateVersion('major');
    print('breaking change');
    return;
  }

  if (features > 0) {
    updateVersion('minor');
    print('new feature');
    return;
  }

  if (fixes > 0) {
    updateVersion('patch');
    print('fixed stuff');
    return;
  }
}

void updateVersion(type) async {
  final version = await Process.run(
    "flutter",
    ["pub", "run", "cider", "bump", type],
    workingDirectory: Directory.current.path,
  );

  print("Updated to v${version.stdout}");

  await Process.run(
    "git",
    ["tag", version.stdout.trim()],
    workingDirectory: Directory.current.path,
  );

  await Process.run(
    "flutter",
    ["pub", "run", "cider", "release", type],
    workingDirectory: Directory.current.path,
  );
}
