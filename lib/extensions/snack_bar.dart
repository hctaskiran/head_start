import 'package:flutter/material.dart';

extension SnackBarExt on BuildContext {
  void sneckBar(String message, int duration, Color? backgroundColor) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: duration),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
