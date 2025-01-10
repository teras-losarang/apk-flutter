import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/containers/circular_icon_container.dart';
import 'package:myapp/common/widgets/layouts/grid_layout.dart';
import 'package:myapp/features/shop/screens/home/home.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_card_vertical.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: HAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: false,
        actions: [
          HCircularIconContainer(
            icon: Iconsax.add,
            color: dark ? HColors.white : HColors.dark,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              HGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
