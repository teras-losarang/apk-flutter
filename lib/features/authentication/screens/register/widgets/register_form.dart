import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/features/authentication/controllers/register_controller.dart';
import 'package:myapp/features/authentication/screens/register/widgets/register_term_condition.dart';
import 'package:myapp/features/authentication/screens/verifyemail/verify_email.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/util/validators/validation.dart';

class HRegisterForm extends StatelessWidget {
  const HRegisterForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());

    return Form(
      key: controller.registerFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      HValidator.validateEmptyText("First Name", value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: HSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      HValidator.validateEmptyText("Last Name", value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: HSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.email,
            validator: (value) => HValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: HSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.phone,
            expands: false,
            validator: (value) => HValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: "Phone Number",
              prefixIcon: Icon(Iconsax.call),
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
            height: HSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Obx(() {
                  return Checkbox(
                    value: controller.privacyPolicy.value,
                    activeColor: HColors.primary,
                    onChanged: (value) => controller.privacyPolicy.value =
                        !controller.privacyPolicy.value,
                  );
                }),
              ),
              const SizedBox(
                width: HSizes.spaceBtwItems,
              ),
              HTermCondition(dark: dark),
            ],
          ),
          const SizedBox(
            height: HSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.register(),
                style:
                    ElevatedButton.styleFrom(backgroundColor: HColors.primary),
                child: const Text("Create Account")),
          ),
          const SizedBox(
            height: HSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}
