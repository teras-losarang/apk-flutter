import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/features/shop/screens/home/widgets/cart_menu_icon.dart';
import 'package:myapp/util/constants/colors.dart';

class HHomeAppBar extends StatelessWidget {
  const HHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            "Hakim Asrori",
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: HColors.white,
                ),
          ),
        ],
      ),
      actions: [
        HCartCounterIcon(
          onPressed: () {},
        ),
      ],
    );
  }
}
