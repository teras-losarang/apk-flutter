import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/appbar/tabbar.dart';
import 'package:myapp/common/widgets/containers/circular_image_container.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/common/widgets/containers/search_container.dart';
import 'package:myapp/common/widgets/layouts/grid_layout.dart';
import 'package:myapp/features/shop/screens/home/widgets/cart_menu_icon.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_card.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_show_case.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_title_text_with_verified_icon.dart';
import 'package:myapp/features/shop/screens/store/widgets/category_tab.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/enums.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: HAppBar(
          showBackArrow: false,
          title: Text(
            "Store",
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
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? HColors.black : HColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(HSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: HSizes.spaceBtwItems),
                      const HSearchContainer(
                        text: "Search in store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: HSizes.spaceBtwSections),
                      HHeadingContainer(
                        title: "Featured Brands",
                        onPressed: () {},
                        showActionButton: true,
                      ),
                      const SizedBox(height: HSizes.spaceBtwItems / 1.5),
                      HGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const BrandCard();
                        },
                      )
                    ],
                  ),
                ),
                bottom: const HTabBar(tabs: [
                  Tab(
                    child: Text("Sports"),
                  ),
                  Tab(
                    child: Text("Furniture"),
                  ),
                  Tab(
                    child: Text("Clothes"),
                  ),
                  Tab(
                    child: Text("Electronic"),
                  ),
                  Tab(
                    child: Text("Cosmetics"),
                  ),
                ]),
              )
            ];
          },
          body: const TabBarView(children: [
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
          ]),
        ),
      ),
    );
  }
}
