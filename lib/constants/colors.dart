import 'package:flutter/material.dart';

class CColor extends TextColors with BackgroundColors, IconColors {}

class TextColors {
  final Color textBlack = Colors.black;
  final Color textWhite = Colors.white;
}

mixin IconColors {
  final Color iconPink4 = Colors.pink[400]!;
}

mixin BackgroundColors {
  final Color shimmerBase = Colors.grey[300]!;
  final Color shimmerHighlight = Colors.grey[100]!;
}

