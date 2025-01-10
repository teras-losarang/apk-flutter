import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/containers/circular_icon_container.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        HCircularIconContainer(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: HSizes.md,
          color: dark ? HColors.white : HColors.black,
          backgroundColor: dark ? HColors.darkerGrey : HColors.grey,
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
          width: 32,
          height: 32,
          size: HSizes.md,
          color: HColors.white,
          backgroundColor: HColors.primary,
        ),
      ],
    );
  }
}
