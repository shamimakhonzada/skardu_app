import 'package:flutter/material.dart';

import '../../../../common/product_cart/cart_menu_icon.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/text_strings.dart';

class SkdHomeAppBar extends StatelessWidget {
  const SkdHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SkdAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SkdStrings.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: SkdColors.grey)),
          Text(SkdStrings.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: SkdColors.white)),
        ],
      ),
      actions: [
        SkdCartCounterIcon(
          onPressed: () {},
          iconColor: SkdColors.white,
        )
      ],
    );
  }
}
