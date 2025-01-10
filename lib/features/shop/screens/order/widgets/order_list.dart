import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return HRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(HSizes.md),
      backgroundColor: dark ? HColors.dark : HColors.grey,
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Iconsax.ship),
              const SizedBox(
                width: HSizes.spaceBtwItems / 2,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Processing",
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: HColors.primary,
                            fontWeightDelta: 1,
                          ),
                    ),
                    Text(
                      "07 Nov 2024",
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.arrow_right_34,
                  size: HSizes.iconSm,
                ),
              )
            ],
          ),
          const SizedBox(
            height: HSizes.spaceBtwItems,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.tag),
                    const SizedBox(
                      width: HSizes.spaceBtwItems / 2,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "[1021200]",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(
                      width: HSizes.spaceBtwItems / 2,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shipping Date",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "07 Nov 2024",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
