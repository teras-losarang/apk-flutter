import 'package:flutter/material.dart';
import 'package:myapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/device/device_utility.dart';
import 'package:myapp/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: HDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: HSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? HColors.light : HColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
