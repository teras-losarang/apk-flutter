import 'package:flutter/material.dart';
import 'package:myapp/util/theme/custom_themes/appbar_theme.dart';
import 'package:myapp/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:myapp/util/theme/custom_themes/checkbox_theme.dart';
import 'package:myapp/util/theme/custom_themes/chip_theme.dart';
import 'package:myapp/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:myapp/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:myapp/util/theme/custom_themes/text_field_theme.dart';
import 'package:myapp/util/theme/custom_themes/text_theme.dart';

class HAppTheme {
  HAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: HTextTheme.lightTextTheme,
    elevatedButtonTheme: HElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: HAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: HBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: HCheckBoxTheme.lightCheckboxTheme,
    chipTheme: HChipTheme.lightChipTheme,
    inputDecorationTheme: HTextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: HOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: HTextTheme.darkTextTheme,
    elevatedButtonTheme: HElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: HAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: HBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: HCheckBoxTheme.darkCheckboxTheme,
    chipTheme: HChipTheme.darkChipTheme,
    inputDecorationTheme: HTextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: HOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
