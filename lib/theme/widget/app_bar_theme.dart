import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBarTheme extends AppBarTheme {
  const CustomAppBarTheme({Key? key})
      : super(
            toolbarHeight: 50,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(30, 30),
              ),
            ),
            elevation: 0,
            scrolledUnderElevation: 0,
            systemOverlayStyle: const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: Colors.black),
            centerTitle: true,
            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20));
}
