import 'package:flutter/material.dart';
import 'package:myapp/util/constants/sizes.dart';

class HRegisterHeader extends StatelessWidget {
  const HRegisterHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's create your account",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: HSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
