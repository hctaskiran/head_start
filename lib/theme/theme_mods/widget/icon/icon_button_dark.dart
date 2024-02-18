import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';
class IconButtonDark extends IconButtonThemeData {
  IconButtonDark() : super(style: ButtonStyle(overlayColor: MaterialStateProperty.all(ThemeColors.dark.iconDark)));
}
