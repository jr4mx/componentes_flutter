import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  static const Color primaryC = Colors.indigoAccent;
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
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.indigo),
    ),
  );
}
