import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/util/constants/colors.dart';

class HCartCounterIcon extends StatelessWidget {
  const HCartCounterIcon({
    super.key,
    this.iconColor = HColors.white,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: HColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: HColors.white,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
