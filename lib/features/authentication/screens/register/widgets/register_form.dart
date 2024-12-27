import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/features/authentication/screens/register/widgets/register_term_condition.dart';
import 'package:myapp/features/authentication/screens/verifyemail/verify_email.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class HRegisterForm extends StatelessWidget {
  const HRegisterForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
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
            expands: false,
            decoration: const InputDecoration(
              labelText: "Phone Number",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: HSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: HSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
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
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
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
