import 'package:flutter/material.dart';
import 'package:head_start/constants/application.dart';

class CustomBNBTheme extends BottomNavigationBarThemeData {
  CustomBNBTheme({Key? key})
      : super(
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 24),
          unselectedItemColor: CColor.black,
          selectedItemColor: CColor.black,
          showUnselectedLabels: false,
          backgroundColor: const Color.fromARGB(255, 244, 206, 219),
          type: BottomNavigationBarType.shifting,
        );
}
