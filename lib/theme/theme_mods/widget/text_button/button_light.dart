import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';

class TextButtonLight extends TextButtonThemeData {
  TextButtonLight()
      : super(style: ButtonStyle(foregroundColor: MaterialStateProperty.all(ThemeColors.light.textButtonLight)));
}
