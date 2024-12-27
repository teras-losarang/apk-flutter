import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_title_text.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/enums.dart';
import 'package:myapp/util/constants/sizes.dart';

class BrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const BrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = HColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: BrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(
          width: HSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: HSizes.iconXs,
        ),
      ],
    );
  }
}
