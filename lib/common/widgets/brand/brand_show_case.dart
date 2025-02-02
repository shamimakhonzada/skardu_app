import 'package:flutter/material.dart';

import 'skd_brand_card.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_contianer.dart';

class SkdBrandShowCase extends StatelessWidget {
  const SkdBrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final bool dark = SkdHelperFunction.isDarkMode(context);
    return SkdRoundedContainer(
      showBorder: true,
      borderColor: SkdColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(SkdSizes.md),
      margin: EdgeInsets.only(bottom: SkdSizes.spaceBtwSections),
      child: Column(
        children: [
          ///Brands with Products
          SkdBrandCard(showBorder: false),
          SizedBox(height: SkdSizes.spaceBtwItems),

          ///brands Top 3 Product images
          Row(
            children: images
                .map((image) => brandOnTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandOnTopProductImageWidget(String image, context) {
    return Expanded(
      child: SkdRoundedContainer(
        height: 100,
        backgroundColor: SkdHelperFunction.isDarkMode(context)
            ? SkdColors.darkerGrey
            : SkdColors.light,
        margin: EdgeInsets.only(right: SkdSizes.sm),
        padding: EdgeInsets.all(SkdSizes.md),
        child: Image(
            fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
