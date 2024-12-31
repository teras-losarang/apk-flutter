import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_card.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return HRoundedContainer(
      showBorder: true,
      borderColor: HColors.dark,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(HSizes.md),
      margin: const EdgeInsets.only(bottom: HSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(
            showBorder: false,
          ),
          Row(
            children:
                images.map((e) => brandTopProductImageWidget(dark, e)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(bool dark, String image) {
    return Expanded(
      child: HRoundedContainer(
        height: 100,
        backgroundColor: dark ? HColors.darkerGrey : HColors.white,
        margin: const EdgeInsets.only(right: HSizes.sm),
        padding: const EdgeInsets.all(HSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
