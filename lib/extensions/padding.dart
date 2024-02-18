import 'package:flutter/material.dart';

extension CustomExtensions on Widget {
  Widget symetricPadding(double horizontal, double vertical) => Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  Widget onlyPadding(double top, double bottom, double left, double right) => Padding(
        padding: EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
        child: this,
      );
  Widget allPadding(double all) => Padding(
        padding: EdgeInsets.all(all),
        child: this,
      );
}
