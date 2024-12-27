import 'package:flutter/material.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';

class HRoundedContainer extends StatelessWidget {
  const HRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.child,
    this.radius = HSizes.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = HColors.borderPrimary,
    this.backgroundColor = HColors.white,
    this.padding,
    this.margin,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
