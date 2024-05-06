import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle textWhite28({
    double fontSize = 28,
    FontWeight fontWeight = FontWeight.w600,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
  static TextStyle textWhite14({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
  static TextStyle textButton16({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
  static TextStyle subtitleText({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w400,
    Color color = const Color.fromRGBO(255, 255, 255, 0.5),
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
  static TextStyle textName({
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w500,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
}
