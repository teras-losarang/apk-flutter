import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:myapp/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:myapp/features/shop/screens/checkout/widgets/billing_detail_section.dart';
import 'package:myapp/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:myapp/features/shop/screens/checkout/widgets/coupon_code.dart';
import 'package:myapp/features/shop/screens/success/success.dart';
import 'package:myapp/navigation_menu.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: HAppBar(
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: HSizes.spaceBtwSections,
              ),
              const CouponCode(),
              const SizedBox(
                height: HSizes.spaceBtwSections,
              ),
              HRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(HSizes.md),
                backgroundColor: dark ? HColors.black : HColors.white,
                child: const Column(
                  children: [
                    BillingDetailSection(),
                    SizedBox(
                      height: HSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: HSizes.spaceBtwItems,
                    ),
                    BillingPaymentSection(),
                    SizedBox(
                      height: HSizes.spaceBtwItems,
                    ),
                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
              image: HImageStrings.successOrder,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()))),
          style: ElevatedButton.styleFrom(
            backgroundColor: HColors.primary,
          ),
          child: const Text("Checkout"),
        ),
      ),
    );
  }
}
