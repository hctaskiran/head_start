import 'package:flutter/material.dart';

class CustomColors {
  static final background = BackgroundColor();
  static final defaultColor = DefaultColors();
}

class BackgroundColor {
  final Color sneckError = Colors.red[800]!;
  final Color sneckSuccess = Colors.green[800]!;
  final Color sneckIdle = Colors.blueGrey[700]!;
  final Color backdropBackground = Colors.black.withOpacity(0.5);
  final Color containerColor = const Color.fromRGBO(27, 43, 44, 100);
  final Color splash = const Color.fromRGBO(27, 38, 44, 1);
  final Color shimmerBase = Colors.grey[300]!;
  final Color shimmerHighlight = Colors.grey[100]!;
}

class DefaultColors {
  DefaultColors();
  final Color white = Colors.white;
  final Color black = Colors.black;
  final Color red = Colors.red;
  final Color green = Colors.green;
  final Color blue = Colors.blue;
  final Color grey = Colors.grey;
  final Color grey700 = Colors.grey[700]!;
}

