import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/common/widgets/containers/search_container.dart';
import 'package:myapp/common/widgets/layouts/grid_layout.dart';
import 'package:myapp/common/widgets/shapes/containers/primary_header_container.dart';
import 'package:myapp/features/shop/controllers/home_controller.dart';
import 'package:myapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:myapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:myapp/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_card_vertical.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:myapp/features/shop/screens/store/widgets/store_card_vertical.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HPrimaryHeaderContainer(
              child: Column(
                children: [
                  HHomeAppBar(),
                  SizedBox(
                    height: HSizes.spaceBtwSections,
                  ),
                  HSearchContainer(
                    text: "Search in store",
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: HSizes.spaceBtwSections,
                  ),
                  HHomeCategories(),
                  SizedBox(
                    height: HSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(HSizes.defaultSpace),
              child: Column(
                children: [
                  if (controller.categoryBanners.isNotEmpty)
                    HPromoSlider(
                      isNetworkImage: true,
                      banners: controller.categoryBanners
                          .map((e) => e.image!)
                          .toList(),
                    ),
                  if (controller.categoryBanners.isNotEmpty)
                    const SizedBox(
                      height: HSizes.spaceBtwSections,
                    ),
                  HHeadingContainer(
                    title: "Partner Teras",
                    showActionButton: false,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: HSizes.spaceBtwItems,
                  ),
                  HGridLayout(
                      itemCount: 2,
                      mainAxisExtent: 175,
                      itemBuilder: (_, index) => const StoreCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
