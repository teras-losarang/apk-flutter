import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/styles/spacing_styles.dart';
import 'package:myapp/features/authentication/screens/login/login.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                width: HHelperFunctions.screenWidth() * 0.6,
                image: const AssetImage(HImageStrings.successEmail),
              ),
              const SizedBox(
                height: HSizes.spaceBtwSections,
              ),
              Text(
                "Your account successfully created!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              Text(
                "Welcome to Your Ultimate, Shopping Destination: Your Account is Created, Unleash the Joy of Seamless Online Shopping!",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: HSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HColors.primary),
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text("Continue"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
