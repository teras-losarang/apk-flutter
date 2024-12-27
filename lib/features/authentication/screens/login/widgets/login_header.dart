import 'package:flutter/material.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/constants/text_strings.dart';

class HLoginHeader extends StatelessWidget {
  const HLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
              dark ? HImageStrings.lightAppLogo : HImageStrings.darkAppLogo),
          height: 150,
        ),
        Text(
          HTextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: HSizes.sm,
        ),
        Text(
          HTextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
