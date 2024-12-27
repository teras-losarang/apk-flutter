import 'package:flutter/material.dart';

class HAppBarTheme {
  HAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 25),
      actionsIconTheme: IconThemeData(color: Colors.black, size: 25),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ));

  static const darkAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 25),
      actionsIconTheme: IconThemeData(color: Colors.white, size: 25),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ));
}
