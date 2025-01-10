import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/circular_image_container.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_title_text_with_verified_icon.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/enums.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            HRoundedContainer(
              radius: HSizes.sm,
              backgroundColor: HColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: HSizes.sm,
                vertical: HSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: HColors.black,
                    ),
              ),
            ),
            const SizedBox(
              width: HSizes.spaceBtwItems,
            ),
            Text(
              "Rp 10.000",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: HSizes.spaceBtwItems,
            ),
            const ProductPriceText(
              currencySign: "Rp ",
              price: "7.500",
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: HSizes.spaceBtwItems / 1.5,
        ),
        const ProductTitleText(title: "ABC Terasi Udang"),
        const SizedBox(
          height: HSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            const ProductTitleText(title: "Status "),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: HSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            HCircularImageContainer(
              image: HImageStrings.cloth,
              width: 32,
              height: 32,
              overlayColor: dark ? HColors.white : HColors.black,
            ),
            const SizedBox(
              width: HSizes.spaceBtwItems,
            ),
            const BrandTitleTextWithVerifiedIcon(
              title: "ABC",
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
