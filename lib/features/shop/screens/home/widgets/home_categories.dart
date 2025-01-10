import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/features/shop/controllers/home_controller.dart';
import 'package:myapp/features/shop/screens/home/widgets/vertical_image_text.dart';
import 'package:myapp/features/shop/screens/sub_category/sub_category.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';

class HHomeCategories extends StatelessWidget {
  const HHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;

    return Padding(
      padding: const EdgeInsets.only(left: HSizes.defaultSpace),
      child: Column(
        children: [
          const HHeadingContainer(
            title: "Popular Categories",
            textColor: HColors.white,
          ),
          const SizedBox(
            height: HSizes.spaceBtwItems,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.categoryMenus.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return HVerticalImageText(
                  title: controller.categoryMenus[index].name!,
                  image: controller.categoryMenus[index].image!,
                  isNetworkImage: true,
                  onTap: () => Get.to(() => const SubCategoryScreen()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
