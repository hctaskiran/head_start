import 'package:flutter/material.dart';

class CustomBNBTheme extends BottomNavigationBarThemeData {
  const CustomBNBTheme({Key? key})
      : super(
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 24),
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          showUnselectedLabels: false,
          backgroundColor: const Color.fromARGB(255, 244, 206, 219),
          type: BottomNavigationBarType.shifting,
        );
}
