import 'package:flutter/cupertino.dart';
import 'package:skardu_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SkdHelperFunction.isDarkMode(context);
    return Positioned(
        bottom: SkdDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: SkdSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? SkdColors.white : SkdColors.black,
              dotHeight: 6),
        ));
  }
}
