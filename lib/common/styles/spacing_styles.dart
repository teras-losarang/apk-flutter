import 'package:flutter/material.dart';
import 'package:myapp/util/constants/sizes.dart';

class HSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: HSizes.appBarHeight,
    left: HSizes.defaultSpace,
    bottom: HSizes.defaultSpace,
    right: HSizes.defaultSpace,
  );
}
