import 'package:flutter/material.dart';
import 'package:myapp/common/styles/spacing_styles.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

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
                image: AssetImage(image),
              ),
              const SizedBox(
                height: HSizes.spaceBtwSections,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              Text(
                subTitle,
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
                  onPressed: onPressed,
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
