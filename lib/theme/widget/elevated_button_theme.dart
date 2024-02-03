import 'package:flutter/material.dart';

class EBTheme extends ElevatedButtonThemeData {
  EBTheme({Key? key})
      : super(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red[500],
            backgroundColor: Colors.grey[100],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        );
}
