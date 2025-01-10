import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/layouts/grid_layout.dart';
import 'package:myapp/features/shop/screens/home/widgets/cart_menu_icon.dart';
import 'package:myapp/features/shop/screens/store/widgets/store_card_vertical.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: HAppBar(
        showBackArrow: true,
        title: Text(
          "Sports",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          HCartCounterIcon(
            onPressed: () {},
            iconColor: dark ? HColors.white : HColors.dark,
          ),
          const SizedBox(
            width: HSizes.md,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: HGridLayout(
              itemCount: 10,
              mainAxisExtent: 175,
              itemBuilder: (_, index) => const StoreCardVertical()),
        ),
      ),
    );
  }
}
