import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/common/widgets/text/skd_brand_title_text.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class SkdBrandTitleWithVerifiedIcon extends StatelessWidget {
  const SkdBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = SkdColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min,children: [
      Flexible(
          child: SkdBrandTitleText(
        title: title,
        color: textColor,
        maxLines: maxLines,
        textAlign: textAlign,
        brandTextSize: brandTextSize,
      )),
      SizedBox(width: SkdSizes.xs),
      Icon(
        Iconsax.verify5,
        color: SkdColors.primary,
        size: SkdSizes.iconXs,
      )
    ]);
  }
}
