import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/common/widgets/containers/heading_container.dart';
import 'package:myapp/common/widgets/list_tile/user_profile_tile.dart';
import 'package:myapp/common/widgets/shapes/containers/primary_header_container.dart';
import 'package:myapp/features/authentication/screens/login/login.dart';
import 'package:myapp/features/personalization/screens/address/address.dart';
import 'package:myapp/features/personalization/screens/profile/profile.dart';
import 'package:myapp/features/personalization/screens/settings/widgets/settings_menu_tile.dart';
import 'package:myapp/features/shop/screens/cart/cart.dart';
import 'package:myapp/features/shop/screens/order/order.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/services/storage_service.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localStorage = StorageService.instance;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HPrimaryHeaderContainer(
            child: Column(
              children: [
                HAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: HColors.white),
                  ),
                  showBackArrow: false,
                ),
                HUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: HSizes.spaceBtwSections,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(HSizes.defaultSpace),
            child: Column(
              children: [
                const HHeadingContainer(
                  title: "Account Setting",
                  showActionButton: false,
                ),
                const SizedBox(
                  height: HSizes.spaceBtwItems,
                ),
                SettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: "My Address",
                  subTitle: "Set shopping delivery address",
                  onTap: () => Get.to(() => const AddressScreen()),
                ),
                // SettingsMenuTile(
                //   icon: Iconsax.shopping_cart,
                //   title: "My Cart",
                //   subTitle: "Add, remove products and move to checkout",
                //   onTap: () => Get.to(() => const CartScreen()),
                // ),
                SettingsMenuTile(
                  icon: Iconsax.bag_tick,
                  title: "My Order",
                  subTitle: "In-progress and Completed Orders",
                  onTap: () => Get.to(() => const OrderScreen()),
                ),
                // SettingsMenuTile(
                //   icon: Iconsax.bank,
                //   title: "Bank Account",
                //   subTitle: "Withdraw balance to registered bank account",
                //   onTap: () {},
                // ),
                // SettingsMenuTile(
                //   icon: Iconsax.discount_shape,
                //   title: "My Coupons",
                //   subTitle: "List of all the discounted coupons",
                //   onTap: () {},
                // ),
                SettingsMenuTile(
                  icon: Iconsax.notification,
                  title: "Notifications",
                  subTitle: "Set any kind of notification message",
                  onTap: () {},
                ),
                // SettingsMenuTile(
                //   icon: Iconsax.security_card,
                //   title: "Account Privacy",
                //   subTitle: "Manage data usage and connected accounts",
                //   onTap: () {},
                // ),
                const SizedBox(
                  height: HSizes.spaceBtwSections,
                ),
                const HHeadingContainer(
                  title: "App Settings",
                  showActionButton: false,
                ),
                const SizedBox(
                  height: HSizes.spaceBtwItems,
                ),
                SettingsMenuTile(
                  icon: Iconsax.document_upload,
                  title: "Load Data",
                  subTitle: "Upload Data to your Cloud Firebase",
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.location,
                  title: "Geolocation",
                  subTitle: "Set recommendation based on location",
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                SettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: "Safe Mode",
                  subTitle: "Search result is safe for all ages",
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                SettingsMenuTile(
                  icon: Iconsax.image,
                  title: "HD Image Quality",
                  subTitle: "Set image quality to be seen",
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                const SizedBox(
                  height: HSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      localStorage.clearStorageAuth();
                      Get.offAll(() => const LoginScreen());
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: HColors.primary,
                      ),
                    ),
                    child: Text(
                      "Logout",
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: HColors.primary,
                          ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
