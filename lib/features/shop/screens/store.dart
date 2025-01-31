import 'package:flutter/material.dart';
import 'package:skardu_app/common/widgets/custom_shapes/containers/rounded_contianer.dart';
import 'package:skardu_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:skardu_app/common/widgets/layouts/grid_layout.dart';
import 'package:skardu_app/common/widgets/text/section_heading.dart';
import 'package:skardu_app/utils/constants/image_strings.dart';
import 'package:skardu_app/utils/constants/sizes.dart';

import '../../../common/product_cart/cart_menu_icon.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/images/skd_circular_image.dart';
import '../../../common/widgets/text/skd_brand_title_with_verified_icon.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: SkdAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          SkdCartCounterIcon(
            onPressed: () {},
            iconColor: dark ? SkdColors.white : SkdColors.black,
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? SkdColors.black : SkdColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(SkdSizes.defaultSpace),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    ///Search Bar
                    SizedBox(height: SkdSizes.spaceBtwItems),
                    SkdSearchContainer(
                      text: "Search in Store",
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: SkdSizes.spaceBtwSections),

                    /// --Featured Brands
                    SkdSectionHeading(
                        title: "Featured Brands", onPressed: () {}),
                    SizedBox(height: SkdSizes.spaceBtwItems / 1.5),
                    SkdGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: SkdRoundedContainer(
                              padding: EdgeInsets.all(SkdSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  ///Icon
                                  Flexible(
                                    child: SkdCircularImage(
                                      image: SkdImage.clothIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: dark
                                          ? SkdColors.white
                                          : SkdColors.black,
                                    ),
                                  ),
                                  SizedBox(width: SkdSizes.spaceBtwItems / 2),

                                  ///Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SkdBrandTitleWithVerifiedIcon(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text("256 Products",
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(
            // Add your body content here
            ),
      ),
    );
  }
}
