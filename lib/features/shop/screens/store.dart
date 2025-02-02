import 'package:flutter/material.dart';
import 'package:skardu_app/common/widgets/appbar/tab_bar.dart';
import 'package:skardu_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:skardu_app/common/widgets/layouts/grid_layout.dart';
import 'package:skardu_app/common/widgets/text/section_heading.dart';
import 'package:skardu_app/common/widgets/brand/skd_brand_card.dart';
import 'package:skardu_app/utils/constants/sizes.dart';

import '../../../common/product_cart/cart_menu_icon.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/brand/category_tab.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                              return SkdBrandCard(showBorder: true);
                            })
                      ],
                    ),
                  ),

                  ///Tab
                  bottom: SkdTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]),
                )
              ];
            },
            body: TabBarView(children: [
             SkdCategoryTab(),
              SkdCategoryTab(),
              SkdCategoryTab(),
              SkdCategoryTab(),
              SkdCategoryTab()
            ])),
      ),
    );
  }
}
