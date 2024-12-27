import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/common/widgets/shapes/containers/circular_container.dart';
import 'package:myapp/features/shop/controllers/home_controller.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';

class HPromoSlider extends StatelessWidget {
  const HPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((url) => HRoundedImageContainer(
                    imageUrl: url,
                    applyImageRadius: true,
                  ))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: HSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                HCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? HColors.primary
                      : HColors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}
