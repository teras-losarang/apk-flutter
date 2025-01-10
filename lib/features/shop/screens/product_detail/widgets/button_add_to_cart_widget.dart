import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/containers/circular_icon_container.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class ButtonAddToCartWidget extends StatelessWidget {
  const ButtonAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: HSizes.defaultSpace,
        vertical: HSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? HColors.darkerGrey : HColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(HSizes.cardRadiusLg),
          topRight: Radius.circular(HSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const HCircularIconContainer(
                icon: Iconsax.minus,
                backgroundColor: HColors.darkGrey,
                width: 40,
                height: 40,
                color: HColors.white,
              ),
              const SizedBox(
                width: HSizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: HSizes.spaceBtwItems,
              ),
              const HCircularIconContainer(
                icon: Iconsax.add,
                backgroundColor: HColors.black,
                width: 40,
                height: 40,
                color: HColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(HSizes.md),
                backgroundColor: HColors.black,
                side: const BorderSide(color: HColors.black),
              ),
              child: const Text("Add to Cart")),
        ],
      ),
    );
  }
}
