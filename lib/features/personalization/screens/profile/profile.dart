import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/containers/circular_image_container.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/features/personalization/controllers/profile_controller.dart';
import 'package:myapp/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/services/storage_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localStorage = StorageService.instance;
    final controller = Get.put(ProfileController());

    return Scaffold(
      appBar: HAppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const HCircularImageContainer(
                      image: HImageStrings.darkAppLogo,
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              const HHeadingContainer(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: 'Name',
                value: localStorage.getUser['name'],
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              const HHeadingContainer(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              // const ProfileMenu(
              //   title: 'User ID',
              //   value: '128912',
              //   icon: Iconsax.copy,
              // ),
              ProfileMenu(
                title: 'E-mail',
                value: localStorage.getUser['email'],
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: localStorage.getUser['phone'],
              ),
              // const ProfileMenu(
              //   title: 'Gender',
              //   value: 'Male',
              // ),
              // const ProfileMenu(
              //   title: 'Date of Birth',
              //   value: '24 Oct, 2024',
              // ),
              const Divider(),
              const SizedBox(
                height: HSizes.spaceBtwItems,
              ),
              // Center(
              //   child: TextButton(
              //       onPressed: () {},
              //       child: const Text(
              //         "Close Account",
              //         style: TextStyle(color: Colors.red),
              //       )),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
