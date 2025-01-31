import 'package:flutter/material.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

import '../custom_shapes/containers/rounded_contianer.dart';
import '../images/skd_circular_image.dart';
import '../text/skd_brand_title_with_verified_icon.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class SkdBrandCard extends StatelessWidget {
  const SkdBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bool dark = SkdHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: SkdRoundedContainer(
        padding: EdgeInsets.all(SkdSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///Icon
            Flexible(
              child: SkdCircularImage(
                image: SkdImage.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? SkdColors.white : SkdColors.black,
              ),
            ),
            SizedBox(width: SkdSizes.spaceBtwItems / 2),

            ///Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkdBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text("256 Products",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
