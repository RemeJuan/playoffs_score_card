import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RouterProvider extends ChangeNotifier {
  final PackageInfo _packageInfo;
  int currentIndex = 0;
  late String version;

  RouterProvider(this._packageInfo) {
    version = _packageInfo.version;
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
