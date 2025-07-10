import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Color(0xFFffd900),
    secondary: Colors.white,
    tertiary: Color(0xFF262626),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Color(0xFF262626),
    primary: Color(0xFF262626),
    secondary: Colors.white,
    tertiary: Color(0xFFffffff),
  ),
);
