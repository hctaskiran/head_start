import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';

class DialogLight extends DialogTheme {
  DialogLight()
      : super(
            backgroundColor: ThemeColors.light.dialogBackgroundLight,
            titleTextStyle: TextStyle(color: ThemeColors.light.dialogTitleTextLight));
}
