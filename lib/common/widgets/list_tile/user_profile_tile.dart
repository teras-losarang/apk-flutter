import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/common/widgets/containers/circular_image_container.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/constants/image_strings.dart';
import 'package:myapp/util/services/storage_service.dart';

class HUserProfileTile extends StatelessWidget {
  const HUserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final localStorage = StorageService.instance;

    return ListTile(
      leading: const HCircularImageContainer(
        image: HImageStrings.lightAppLogo,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        localStorage.getUser['name'],
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: HColors.white),
      ),
      subtitle: Text(
        localStorage.getUser['email'],
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: HColors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.edit,
            color: HColors.white,
          )),
    );
  }
}
