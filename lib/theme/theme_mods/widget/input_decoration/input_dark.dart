import 'package:flutter/material.dart';
import 'package:head_start/constants/colors.dart';
import 'package:head_start/constants/theme_colors.dart';

class InputDark extends InputDecorationTheme {
  InputDark({Key? key})
      : super(
          errorStyle: TextStyle(color: CustomColors.defaultColor.red),
          prefixIconColor: ThemeColors.dark.iconDark,
          border: OutlineInputBorder(borderSide: BorderSide(color: CustomColors.defaultColor.red)),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          labelStyle: TextStyle(color: ThemeColors.dark.labelTextDark),
          hintStyle: TextStyle(color: ThemeColors.dark.hintTextDark, fontStyle: FontStyle.italic, fontSize: 14),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ThemeColors.dark.enabledBorderDark)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ThemeColors.dark.focusedBorderDark)),
        );
}
