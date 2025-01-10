import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/features/authentication/controllers/login_controller.dart';
import 'package:myapp/navigation_menu.dart';
import 'package:myapp/features/authentication/screens/forgotpassword/forgot_password.dart';
import 'package:myapp/features/authentication/screens/register/register.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/util/validators/validation.dart';

class HLoginForm extends StatelessWidget {
  const HLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: HSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value) => HValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: HSizes.spaceBtwInputFields,
            ),
            Obx(() {
              return TextFormField(
                controller: controller.password,
                validator: (value) => HValidator.validatePassword(value),
                expands: false,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye)),
                ),
              );
            }),
            const SizedBox(
              height: HSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: controller.rememberMe.value,
                        activeColor: HColors.primary,
                        onChanged: (value) =>
                            controller.rememberMe.value = value!),
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
                onPressed: () => controller.login(),
                style:
                    ElevatedButton.styleFrom(backgroundColor: HColors.primary),
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
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: HColors.primary,
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: HColors.primary,
                  ),
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
