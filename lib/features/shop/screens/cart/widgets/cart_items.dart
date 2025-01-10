import 'package:flutter/material.dart';
import 'package:myapp/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:myapp/features/shop/screens/product/widgets/product_quantity_with_add_remove_button.dart';
import 'package:myapp/util/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: HSizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButton) const SizedBox(height: HSizes.spaceBtwItems),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    ProductQuantityWithAddRemoveButton(),
                  ],
                ),
                ProductPriceText(
                  price: "10.000",
                )
              ],
            ),
        ],
      ),
    );
  }
}
