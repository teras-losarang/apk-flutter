import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/styles/shadow_style.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:myapp/features/shop/screens/product_detail/product_detail.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class StoreCardVertical extends StatelessWidget {
  const StoreCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        padding: const EdgeInsets.all(HSizes.md),
        decoration: BoxDecoration(
          boxShadow: [HShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(HSizes.productImageRadius),
          color: dark ? HColors.darkerGrey : HColors.white,
        ),
        child: Column(
          children: [
            HRoundedContainer(
              padding: const EdgeInsets.all(HSizes.sm),
              backgroundColor: dark ? HColors.dark : HColors.white,
              child: const Stack(
                children: [
                  HRoundedImageContainer(
                    imageUrl: HImageStrings.product,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwItems / 2,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProductTitleText(
                  title: "ABC Terasi Udang 12asasa asasa aasas",
                  smallSize: true,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
