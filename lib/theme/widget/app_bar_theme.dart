import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:head_start/constants/application.dart';

class CustomAppBarTheme extends AppBarTheme {
  CustomAppBarTheme({Key? key})
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
            iconTheme: IconThemeData(color: CColor.black),
            centerTitle: true,
            titleTextStyle: TextStyle(color: CColor.black, fontSize: 20));
}
