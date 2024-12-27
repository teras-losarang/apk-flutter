import 'package:flutter/material.dart';
import 'package:myapp/util/constants/colors.dart';

class HShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: HColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: HColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
