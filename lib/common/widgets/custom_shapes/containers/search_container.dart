import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SkdSearchContainer extends StatelessWidget {
  const SkdSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding =
        const EdgeInsets.symmetric(horizontal: SkdSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
          width: SkdDeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(SkdSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? SkdColors.dark
                    : SkdColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SkdSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: Colors.grey.shade300) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: dark ? SkdColors.light : SkdColors.darkerGrey),
              SizedBox(width: SkdSizes.spaceBtwSections),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          )),
    );
  }
}
