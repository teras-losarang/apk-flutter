import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/navigation_menu.dart';
import 'package:myapp/features/authentication/screens/forgotpassword/forgot_password.dart';
import 'package:myapp/features/authentication/screens/register/register.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class HLoginForm extends StatelessWidget {
  const HLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: HSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text('Remember me'),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.off(() => const ForgotPasswordScreen()),
                  child: const Text("Forgot Password?"),
                ),
              ],
            ),
            const SizedBox(
              height: HSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(
                  "Login",
                ),
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const RegisterScreen()),
                child: const Text(
                  "Register",
                ),
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwSections,
            ),
          ],
        ),
      ),
    );
  }
}
