import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/features/shop/screens/order/widgets/order_list.dart';
import 'package:myapp/util/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: ListView.separated(
          itemBuilder: (_, index) => const OrderList(),
          separatorBuilder: (_, __) => const SizedBox(
            height: HSizes.spaceBtwItems,
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
