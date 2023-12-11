import 'package:flutter/material.dart';
import 'package:head_start/constants/application.dart';

class EBTheme extends ElevatedButtonThemeData {
  EBTheme({Key? key})
      : super(
          style: ElevatedButton.styleFrom(
            foregroundColor: CColor.r5,
            backgroundColor: CColor.gry1,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        );
}
