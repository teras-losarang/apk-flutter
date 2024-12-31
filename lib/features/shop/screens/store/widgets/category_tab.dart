import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/common/widgets/layouts/grid_layout.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_card_vertical.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_show_case.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              const BrandShowCase(
                images: [
                  HImageStrings.cloth,
                  HImageStrings.cloth,
                  HImageStrings.cloth
                ],
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              HHeadingContainer(
                title: "You might like",
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              HGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
