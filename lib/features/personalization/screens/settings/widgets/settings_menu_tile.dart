import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/util/constants/colors.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile({
    super.key,
    this.title = "Title",
    this.subTitle = "Subtitle",
    this.icon = Iconsax.align_right,
    this.trailing,
    this.onTap,
  });

  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: HColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
