class CoreUtils {
  static double calcScore(int value, int max) {
    if (value > max) return 100;
    return double.parse((value / max * 100).toStringAsFixed(1));
  }
}
