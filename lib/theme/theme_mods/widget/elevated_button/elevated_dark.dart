import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';

class ElevatedDark extends ElevatedButtonThemeData {
  ElevatedDark()
      : super(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(ThemeColors.dark.elevatedForegroundDark),
                backgroundColor: MaterialStateProperty.all(ThemeColors.dark.elevatedBackgroundDark),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))));
}
