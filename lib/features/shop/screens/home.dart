import 'package:flutter/material.dart';
import 'package:skardu_app/features/shop/screens/widgets/home_appbar.dart';
import 'package:skardu_app/features/shop/screens/widgets/home_categories.dart';
import 'package:skardu_app/utils/constants/color.dart';
import 'package:skardu_app/utils/constants/sizes.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
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
          ],
        ),
      ),
    );
  }
}
