import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/common/widgets/containers/rounded_container.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        HHeadingContainer(
          title: "Payment Method",
          buttonTitle: "Change",
          showActionButton: true,
          onPressed: () {},
        ),
        const SizedBox(
          height: HSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            HRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? HColors.light : HColors.white,
              padding: const EdgeInsets.all(HSizes.sm),
              child: const Image(
                image: AssetImage(HImageStrings.cloth),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwItems / 2,
            ),
            Text(
              "Paypal",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        )
      ],
    );
  }
}
