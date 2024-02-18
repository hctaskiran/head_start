import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';

class DialogDark extends DialogTheme {
  DialogDark()
      : super(
          backgroundColor: ThemeColors.dark.dialogBackgroundDark,
          surfaceTintColor: ThemeColors.dark.dialogSurfaceDark,
          titleTextStyle: TextStyle(color: ThemeColors.dark.dialogTitleTextDark),
        );
}
