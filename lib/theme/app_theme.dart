import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  static const Color primaryC = Color.fromARGB(255, 80, 86, 168);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryC,
    appBarTheme: const AppBarTheme(
      color: primaryC,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static const Color appBarColor = Color.fromARGB(255, 80, 86, 168);
  static const Color iconColor = Colors.white;
  static const Color textColor = Colors.white;
  static const Color listTileLeadingColor = Color.fromARGB(255, 140, 144, 147);
  static const Color listTileTrailingColor = Colors.grey;
  static const Color listTileSelectedColor = Color.fromARGB(255, 71, 81, 172);
  static const Color listTileBackgroundColor = Colors.white;
}
