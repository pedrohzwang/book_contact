import 'package:flutter/material.dart';

final theme = ThemeData(
  brightness: Brightness.dark,
  primaryColorLight: Colors.purple.shade400,
  primaryColor: Colors.purple,
  primaryColorDark: Colors.purple.shade900,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.purple,
    foregroundColor: Colors.white,
    elevation: 10,
  ),
  disabledColor: Colors.grey.shade300,
  bottomAppBarColor: Colors.purple,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.purple,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: Colors.purple.shade400,
    actionTextColor: Colors.yellow,
    disabledActionTextColor: Colors.grey.shade300,
  ),
);
