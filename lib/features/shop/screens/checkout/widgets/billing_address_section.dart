import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/util/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HHeadingContainer(
          title: "Shipping Address",
          buttonTitle: "Change",
          showActionButton: true,
          onPressed: () {},
        ),
        Text(
          "Hakim Asrori",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: HSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: HSizes.spaceBtwItems,
            ),
            Text(
              "+6283862169726",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: HSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: HSizes.spaceBtwItems,
            ),
            Text(
              "South Liana, Maine 82199, USA",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        )
      ],
    );
  }
}
