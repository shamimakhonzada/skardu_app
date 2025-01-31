import 'package:flutter/material.dart';
import 'package:skardu_app/utils/device/device_utility.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/color.dart';

class SkdTabBar extends StatelessWidget implements PreferredSizeWidget {
  const SkdTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return Material(
      color: dark ? SkdColors.black : SkdColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: SkdColors.primary,
        unselectedLabelColor: SkdColors.darkGrey,
        labelColor: dark ? SkdColors.white : SkdColors.primary,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SkdDeviceUtils.getAppBarHeight());
}
