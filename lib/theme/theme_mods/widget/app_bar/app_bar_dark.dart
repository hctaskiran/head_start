import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';

class DarkAppBar extends AppBarTheme {
  DarkAppBar({Key? key})
      : super(
          scrolledUnderElevation: 0.0,
          iconTheme: IconThemeData(color: ThemeColors.dark.iconDark),
          centerTitle: false,
          backgroundColor: ThemeColors.dark.appBarDark,
          titleTextStyle: TextStyle(color: ThemeColors.dark.textDark, fontSize: 30, fontWeight: FontWeight.bold),
        );
}
