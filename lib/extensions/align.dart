import 'package:flutter/material.dart';

extension ExtendAlign on Widget {
  startAlign() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  centerAlign() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }

  endAlign() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }
}
