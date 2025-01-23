import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skardu_app/utils/constants/image_strings.dart';
import 'package:skardu_app/utils/constants/text_strings.dart';

import '../../controllers.onboarding/onboarding_controller.dart';
import '../widgets/onboarding_navigation.dart';
import '../widgets/onboarding_next_button.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: SkdImage.onBoardingImage1,
                title: SkdStrings.onBoardingTitle1,
                subTitle: SkdStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SkdImage.onBoardingImage2,
                title: SkdStrings.onBoardingTitle2,
                subTitle: SkdStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SkdImage.onBoardingImage3,
                title: SkdStrings.onBoardingTitle3,
                subTitle: SkdStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingNavigation(),

          /// Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
