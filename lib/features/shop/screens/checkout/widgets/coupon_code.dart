import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return HRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? HColors.dark : HColors.white,
      padding: const EdgeInsets.only(
        top: HSizes.sm,
        bottom: HSizes.sm,
        right: HSizes.sm,
        left: HSizes.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have a promo code? Enter here",
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: HColors.grey.withOpacity(0.2),
                foregroundColor: dark
                    ? HColors.white.withOpacity(0.5)
                    : HColors.dark.withOpacity(0.5),
                side: BorderSide(
                  color: HColors.grey.withOpacity(0.1),
                ),
              ),
              child: const Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}
