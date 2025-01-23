import 'package:flutter/material.dart';
import 'package:skardu_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:skardu_app/utils/device/device_utility.dart';

import '../../../../utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: SkdDeviceUtils.getAppBarHeight(),
        right: SkdSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(0),
          child: Text("Skip"),
        ));
  }
}
