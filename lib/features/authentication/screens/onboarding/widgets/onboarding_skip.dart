import 'package:flutter/material.dart';
import 'package:myapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: HDeviceUtils.getAppBarHeight() / 2,
      right: HSizes.defaultSpace / 10,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
