import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/styles/shadow_style.dart';
import 'package:myapp/common/widgets/containers/circular_icon_container.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:myapp/features/shop/screens/product_detail/product_detail.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_title_text_with_verified_icon.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [HShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(HSizes.productImageRadius),
          color: dark ? HColors.darkerGrey : HColors.white,
        ),
        child: Column(
          children: [
            HRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(HSizes.sm),
              backgroundColor: dark ? HColors.dark : HColors.white,
              child: Stack(
                children: [
                  const HRoundedImageContainer(
                    imageUrl: HImageStrings.product,
                    height: 180,
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    top: 12,
                    child: HRoundedContainer(
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
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: HCircularIconContainer(
                      color: Colors.black,
                      icon: Iconsax.heart,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwItems / 2,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductTitleText(
                  title: "ABC Terasi Udang",
                  smallSize: true,
                ),
                SizedBox(
                  height: HSizes.spaceBtwItems / 2,
                ),
                BrandTitleTextWithVerifiedIcon(title: "ABC"),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: HSizes.sm),
                  child: ProductPriceText(
                    price: "10.000",
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: HColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(HSizes.cardRadiusMd),
                      bottomRight: Radius.circular(HSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: HSizes.iconLg * 1.2,
                    height: HSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: HColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
