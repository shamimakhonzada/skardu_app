import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class SkdSocialButtons extends StatelessWidget {
  const SkdSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: SkdColors.grey),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  width: SkdSizes.lg,
                  height: SkdSizes.lg,
                  image: AssetImage(SkdImage.facebook))),
        ),
        SizedBox(
          width: SkdSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: SkdColors.grey),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  width: SkdSizes.lg,
                  height: SkdSizes.lg,
                  image: AssetImage(SkdImage.google))),
        ),
      ],
    );
  }
}
