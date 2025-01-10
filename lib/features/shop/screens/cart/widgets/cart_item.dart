import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_title_text_with_verified_icon.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        HRoundedImageContainer(
          imageUrl: HImageStrings.product,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(HSizes.sm),
          backgroundColor: dark ? HColors.darkerGrey : HColors.white,
        ),
        const SizedBox(
          width: HSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: "ABC"),
              const ProductTitleText(
                title: "Terasi ABC",
                maxLines: 1,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Size ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "1Kg",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
