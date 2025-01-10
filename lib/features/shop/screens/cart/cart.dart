import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/containers/circular_icon_container.dart';
import 'package:myapp/common/widgets/containers/rounded_image_container.dart';
import 'package:myapp/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:myapp/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:myapp/features/shop/screens/checkout/checkout.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_quantity_with_add_remove_button.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:myapp/features/shop/screens/store/widgets/brand_title_text_with_verified_icon.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: HAppBar(
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(HSizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          style: ElevatedButton.styleFrom(
            backgroundColor: HColors.primary,
          ),
          child: const Text("Checkout Rp 10.000"),
        ),
      ),
    );
  }
}
