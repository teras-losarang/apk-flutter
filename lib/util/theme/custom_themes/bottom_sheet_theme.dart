import 'package:flutter/material.dart';

class HBottomSheetTheme {
  HBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    modalBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    constraints: const BoxConstraints(minWidth: double.infinity),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    modalBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    constraints: const BoxConstraints(minWidth: double.infinity),
  );
}
