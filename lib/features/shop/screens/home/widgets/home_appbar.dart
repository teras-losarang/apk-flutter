import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/features/shop/controllers/home_controller.dart';
import 'package:myapp/features/shop/screens/cart/cart.dart';
import 'package:myapp/features/shop/screens/home/widgets/cart_menu_icon.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/services/storage_service.dart';

class HHomeAppBar extends StatelessWidget {
  const HHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final localStorage = StorageService.instance;

    return HAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good day for shopping",
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: HColors.grey,
                ),
          ),
          Text(
            localStorage.getUser["name"],
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: HColors.white,
                ),
          ),
        ],
      ),
      actions: [
        HCartCounterIcon(
          onPressed: () => Get.to(() => const CartScreen()),
        ),
      ],
    );
  }
}
