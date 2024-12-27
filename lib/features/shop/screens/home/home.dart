import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/common/widgets/containers/search_container.dart';
import 'package:myapp/common/widgets/layouts/grid_layout.dart';
import 'package:myapp/common/widgets/shapes/containers/circular_container.dart';
import 'package:myapp/common/widgets/shapes/containers/primary_header_container.dart';
import 'package:myapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:myapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:myapp/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:myapp/features/shop/screens/home/widgets/vertical_image_text.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_card_vertical.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  HHomeCategories()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(HSizes.defaultSpace),
              child: Column(
                children: [
                  const HPromoSlider(
                    banners: [
                      HImageStrings.banner,
                      HImageStrings.banner,
                      HImageStrings.banner,
                    ],
                  ),
                  const SizedBox(
                    height: HSizes.spaceBtwSections,
                  ),
                  HHeadingContainer(
                    title: "Popular Product",
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: HSizes.spaceBtwItems,
                  ),
                  HGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
