import 'package:flutter/material.dart';
import 'package:skardu_app/common/styles/spacing_style.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: SkdSpacingStyle.paddingWithAppBarHeight * 2,
            child: Column(
              children: [
                ///images

                Image(
                  height: SkdHelperFunction.screenHeight() * 0.2,
                  width: SkdHelperFunction.screenWidth(),
                  image: AssetImage(image),
                ),
                SizedBox(
                  height: SkdSizes.spaceBtwSections,
                ),

                ///Title and subTitle

                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SkdSizes.spaceBtwItems,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SkdSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text(SkdStrings.continueText),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
