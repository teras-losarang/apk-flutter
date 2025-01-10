import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/features/shop/screens/product_detail/widgets/button_add_to_cart_widget.dart';
import 'package:myapp/features/shop/screens/product_detail/widgets/product_detail_image_slider.dart';
import 'package:myapp/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:myapp/features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return const Scaffold(
      bottomNavigationBar: ButtonAddToCartWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                right: HSizes.defaultSpace,
                left: HSizes.defaultSpace,
                bottom: HSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  RatingShareWidget(),
                  ProductMetaData(),
                  SizedBox(
                    height: HSizes.spaceBtwSections,
                  ),
                  HHeadingContainer(title: "Description"),
                  SizedBox(
                    height: HSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: HSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
