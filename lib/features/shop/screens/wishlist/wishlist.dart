import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/common/widgets/appbar/appbar.dart';
import 'package:skardu_app/common/widgets/icons/skd_circular_icon.dart';
import 'package:skardu_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:skardu_app/utils/constants/sizes.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../utils/helpers/helper_functions.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: SkdAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [SkdCircularIcon(dark: false, icon: Iconsax.add)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SkdSizes.defaultSpace),
          child: Column(
            children: [
              SkdGridLayout(
                itemCount: 2,
                itemBuilder: (_, index) => SkdProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
