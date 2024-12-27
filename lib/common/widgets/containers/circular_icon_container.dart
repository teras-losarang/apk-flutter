import 'package:flutter/material.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class HCircularIconContainer extends StatelessWidget {
  const HCircularIconContainer({
    super.key,
    this.color = HColors.black,
    this.radius = 100,
    required this.icon,
    this.onPressed,
    this.backgroundColor,
    this.width,
    this.height,
    this.size = HSizes.lg,
  });

  final Color? color;
  final Color? backgroundColor;
  final double? width, height, size;
  final double radius;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor != null
            ? backgroundColor!
            : HHelperFunctions.isDarkMode(context)
                ? HColors.black.withOpacity(0.9)
                : HColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
