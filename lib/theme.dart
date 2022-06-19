import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static const paddingDefault = 8.0;
  static const bottomBarHeight = 56.0;
  static final red = HexColor("#fb053e");
  static final darkerRed = HexColor("#ca0331");
  static final blue = HexColor("#0c0033");

  static final ThemeData primary = ThemeData(
    fontFamily: "Trade Gothic",
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: blue,
      selectedItemColor: red,
      unselectedItemColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: red,
        onPrimary: Colors.white,
      ),
    ),
  );
}
