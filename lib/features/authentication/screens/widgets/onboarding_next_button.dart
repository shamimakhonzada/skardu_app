import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return Positioned(
        bottom: SkdDeviceUtils.getBottomNavigationBarHeight(),
        right: SkdSizes.defaultSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: dark ? SkdColors.primary : Colors.black),
            onPressed: () => OnBoardingController.instance.nextPage(0),
            child: Icon(
              Iconsax.arrow_right_3,
              color: Colors.white,
            )));
  }
}
