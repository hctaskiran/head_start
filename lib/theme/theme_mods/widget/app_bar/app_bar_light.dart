import 'package:flutter/material.dart';
import 'package:head_start/constants/theme_colors.dart';

class LightAppBar extends AppBarTheme {
  LightAppBar({Key? key})
      : super(
          scrolledUnderElevation: 0.0,
          iconTheme: IconThemeData(color: ThemeColors.light.iconLight),
          centerTitle: false,
          backgroundColor: ThemeColors.light.appBarLight,
          titleTextStyle: TextStyle(color: ThemeColors.light.textLight, fontSize: 30, fontWeight: FontWeight.bold),
        );
}
