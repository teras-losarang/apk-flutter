import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/appbar/appbar.dart';
import 'package:myapp/features/personalization/screens/address/new_address.dart';
import 'package:myapp/features/personalization/screens/address/widgets/list_address_widget.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/sizes.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: HAppBar(
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const NewAddressScreen()),
        backgroundColor: HColors.primary,
        child: const Icon(
          Iconsax.add,
          color: HColors.white,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              ListAddressWidget(
                selectedAddress: true,
              ),
              ListAddressWidget(
                selectedAddress: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
