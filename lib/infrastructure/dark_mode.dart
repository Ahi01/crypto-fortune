import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  platform: TargetPlatform.iOS,
  colorScheme: const ColorScheme.dark(
    primary: Color.fromARGB(24, 24, 28, 1),
    secondary: Color.fromARGB(34, 35, 39, 1),
    onSecondary: Color.fromARGB(28, 30, 35, 1),
  ),
  iconTheme: const IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
  buttonTheme: const ButtonThemeData(
    colorScheme: ColorScheme.dark(
        background: Color.fromRGBO(0, 117, 255, 1),
        onBackground: Color.fromRGBO(0, 47, 169, 1)),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  ),
  primaryColorDark: const Color.fromRGBO(24, 24, 28, 1),
  useMaterial3: true,
);
