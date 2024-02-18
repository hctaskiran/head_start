import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';

class ElevatedLight extends ElevatedButtonThemeData {
  ElevatedLight()
      : super(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(ThemeColors.light.elevatedForegroundLight),
                backgroundColor: MaterialStateProperty.all(ThemeColors.light.elevatedBackgroundLight),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))));
}
