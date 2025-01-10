import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/containers/circular_icon_container.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/common/widgets/shapes/curve_edges/curved_edges_widget.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return HCurvesEdgesWidget(
      child: Container(
        color: dark ? HColors.darkerGrey : HColors.white,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(HSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(HImageStrings.product),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: HSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemBuilder: (_, index) => HRoundedImageContainer(
                    imageUrl: HImageStrings.product,
                    width: 80,
                    backgroundColor: dark ? HColors.dark : HColors.white,
                    border: Border.all(
                      color: HColors.primary,
                    ),
                    padding: const EdgeInsets.all(HSizes.sm),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: HSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),
            const HAppBar(
              showBackArrow: true,
              actions: [
                HCircularIconContainer(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
