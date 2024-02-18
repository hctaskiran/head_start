import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';
class IconButtonLight extends IconButtonThemeData {
  IconButtonLight() : super(style: ButtonStyle(overlayColor: MaterialStateProperty.all(ThemeColors.light.iconLight)));
}
