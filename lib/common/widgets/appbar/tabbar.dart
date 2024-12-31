import 'package:flutter/material.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/device/device_utility.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class HTabBar extends StatelessWidget implements PreferredSizeWidget {
  const HTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? HColors.black : HColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: HColors.primary,
        unselectedLabelColor: HColors.darkGrey,
        labelColor: dark ? HColors.white : HColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(HDeviceUtils.getAppBarHeight());
}
