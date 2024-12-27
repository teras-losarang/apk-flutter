import 'package:flutter/material.dart';
import 'package:myapp/util/constants/colors.dart';

class HTermCondition extends StatelessWidget {
  const HTermCondition({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: "I agree to ",
              style: Theme.of(context).textTheme.bodyMedium),
          TextSpan(
            text: "Privacy Policy ",
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? HColors.white : HColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? HColors.white : HColors.primary,
                ),
          ),
          TextSpan(
            text: "and ",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: "Term of use",
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? HColors.white : HColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? HColors.white : HColors.primary,
                ),
          ),
        ],
      ),
    );
  }
}
