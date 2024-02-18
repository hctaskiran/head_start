import 'package:flutter/material.dart';

class ThemeColors {
  static final dark = DarkThemeColors();
  static final light = LightThemeColors();
}

class DarkThemeColors {
  DarkThemeColors();
  final Color scaffoldDark = const Color.fromRGBO(27, 38, 44, 1);
  final Color appBarDark = const Color.fromRGBO(27, 38, 44, 1);
  final Color drawerDark = const Color.fromRGBO(27, 38, 44, 1);
  final Color textDark = Colors.white;
  final Color iconDark = Colors.white;
  final Color textButtonDark = Colors.white;
  final Color tileDark = Colors.white;
  final Color labelTextDark = Colors.grey[200]!;
  final Color hintTextDark = Colors.grey[200]!;
  final Color enabledBorderDark = Colors.white;
  final Color focusedBorderDark = Colors.white;
  final Color elevatedForegroundDark = Colors.white;
  final Color elevatedBackgroundDark = Colors.blue;
  final Color dividerDark = Colors.white;
  final Color dialogTitleTextDark = Colors.white;
  final Color dialogSurfaceDark = Colors.white;
  final Color dialogBackgroundDark = const Color.fromRGBO(27, 38, 44, 1);
  final Color cardDark = const Color.fromRGBO(27, 38, 44, 1);
}

class LightThemeColors {
  LightThemeColors();
  final Color scaffoldLight = Colors.grey[300]!;
  final Color appBarLight = Colors.grey[300]!;
  final Color drawerLight = Colors.grey[300]!;
  final Color textLight = Colors.grey[900]!;
  final Color iconLight = Colors.grey[900]!;
  final Color textButtonLight = Colors.grey[900]!;
  final Color tileLight = Colors.grey[900]!;
  final Color labelTextLight = Colors.grey[500]!;
  final Color hintTextLight = Colors.grey[500]!;
  final Color enabledBorderLight = Colors.grey[900]!;
  final Color focusedBorderLight = Colors.grey[900]!;
  final Color elevatedForegroundLight = Colors.white;
  final Color elevatedBackgroundLight = Colors.grey[700]!;
  final Color dividerLight = Colors.grey[900]!;
  final Color dialogTitleTextLight = Colors.grey[900]!;
  final Color dialogBackgroundLight = Colors.grey[300]!;
  final Color cardLight = Colors.grey[300]!;
}
