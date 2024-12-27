import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:myapp/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:myapp/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:myapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:myapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: HImageStrings.onboarding1,
                title: HTextStrings.onBoardingTitle1,
                subTitle: HTextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: HImageStrings.onboarding2,
                title: HTextStrings.onBoardingTitle2,
                subTitle: HTextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: HImageStrings.onboarding3,
                title: HTextStrings.onBoardingTitle3,
                subTitle: HTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
