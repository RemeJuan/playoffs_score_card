import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static const paddingDefault = 8.0;
  static const bottomBarHeight = 56.0;

  static final ThemeData primary = ThemeData(
    fontFamily: "Trade Gothic",
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: HexColor("0c0033"),
      selectedItemColor: HexColor("fb053e"),
      unselectedItemColor: HexColor("ffffff"),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: HexColor("fb053e"),
        onPrimary: HexColor("ffffff"),
      ),
    ),
  );
}
