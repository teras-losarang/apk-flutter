import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class ListAddressWidget extends StatelessWidget {
  const ListAddressWidget({super.key, this.selectedAddress = false});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return HRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? HColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? HColors.darkerGrey
              : HColors.grey,
      margin: const EdgeInsets.only(
        bottom: HSizes.spaceBtwItems,
      ),
      padding: const EdgeInsets.all(HSizes.md),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? HColors.light
                      : HColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hakim Asrori",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: HSizes.sm,
              ),
              Text(
                "+6283862169726",
                style: Theme.of(context).textTheme.labelSmall,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "123 Main Street, New York, New York 100001, United States",
                style: Theme.of(context).textTheme.labelSmall,
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
