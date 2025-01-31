import 'package:flutter/material.dart';
import 'package:skardu_app/features/shop/screens/widgets/home_appbar.dart';
import 'package:skardu_app/features/shop/screens/widgets/home_categories.dart';
import 'package:skardu_app/features/shop/screens/widgets/promo_slider.dart';
import 'package:skardu_app/utils/constants/color.dart';
import 'package:skardu_app/utils/constants/image_strings.dart';
import 'package:skardu_app/utils/constants/sizes.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/layouts/grid_layout.dart';
import '../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../common/widgets/text/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- Header
            SkdPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  SkdHomeAppBar(),
                  SizedBox(
                    height: SkdSizes.spaceBtwSections,
                  ),

                  ///Searchbar
                  SkdSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: SkdSizes.spaceBtwSections,
                  ),

                  ///Heading
                  Padding(
                    padding: const EdgeInsets.only(left: SkdSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkdSectionHeading(
                          title: 'Popular Categories',
                          textColor: SkdColors.white,
                          showActionButton: false,
                        ),
                        SizedBox(height: SkdSizes.spaceBtwItems),

                        ///Categories
                        SkdHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(SkdSizes.defaultSpace),
              child: Column(
                children: [
                  ///Promo Slider
                  SkdPromoSlider(
                    banners: [
                      SkdImage.promoBanner1,
                      SkdImage.promoBanner2,
                      SkdImage.promoBanner3,
                      SkdImage.promoBanner4,
                      SkdImage.promoBanner5,
                      SkdImage.promoBanner6,
                      SkdImage.promoBanner7,
                      SkdImage.promoBanner8,
                    ],
                  ),
                  SizedBox(height: SkdSizes.spaceBtwSections),

                  ///Popular Product
                  SkdGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => SkdProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
