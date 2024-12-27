import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/features/authentication/screens/resetpassword/reset_password.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: HSizes.spaceBtwItems),
            Text(
              "Don't worry sometimes people can forgot too, enter your email and we will send you a password reset link",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: HSizes.spaceBtwSections * 2),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: HSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPasswordScreen()),
                child: const Text('Submit'),
              ),
            ),
            const SizedBox(height: HSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
