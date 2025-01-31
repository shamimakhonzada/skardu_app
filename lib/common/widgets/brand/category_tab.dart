import 'package:flutter/material.dart';
import 'package:skardu_app/common/widgets/layouts/grid_layout.dart';
import 'package:skardu_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:skardu_app/common/widgets/text/section_heading.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'brand_show_case.dart';

class SkdCategoryTab extends StatelessWidget {
  const SkdCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(SkdSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              SkdBrandShowCase(
                images: [
                  SkdImage.productImage1,
                  SkdImage.productImage4,
                  SkdImage.productImage3,
                ],
              ),
              SizedBox(height: SkdSizes.spaceBtwItems),

              ///Products
              SkdSectionHeading(title: "You might like", onPressed: () {}),
              SizedBox(height: SkdSizes.spaceBtwItems),
              SkdGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => SkdProductCardVertical()),
              SizedBox(height: SkdSizes.spaceBtwSections)
            ],
          ),
        )
      ],
    );
  }
}
