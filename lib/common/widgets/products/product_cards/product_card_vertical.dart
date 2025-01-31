import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/common/styles/shadow.dart';
import 'package:skardu_app/common/widgets/custom_shapes/containers/rounded_contianer.dart';
import 'package:skardu_app/common/widgets/images/skd_rounded_image.dart';
import 'package:skardu_app/utils/constants/color.dart';
import 'package:skardu_app/utils/constants/sizes.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../icons/skd_circular_icon.dart';
import '../../price/price.dart';
import '../../text/product_title_text.dart';
import '../../text/skd_brand_title_with_verified_icon.dart';

class SkdProductCardVertical extends StatelessWidget {
  const SkdProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);

    ///Container with padding,color,edges,radius and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [SkdShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(SkdSizes.productImageRadius),
            color: dark ? SkdColors.darkerGrey : SkdColors.white),
        child: Column(
          children: [
            ///Thumbnail,Wishlist,Button,Discount Tag
            SkdRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(SkdSizes.sm),
              backgroundColor: dark ? SkdColors.dark : SkdColors.light,
              child: Stack(
                children: [
                  ///Thumbnail Image
                  SkdRoundedImage(
                      imageUrl: SkdImage.productImage1, applyImageRadius: true),

                  ///Sale Tag
                  Positioned(
                    top: 12,
                    child: SkdRoundedContainer(
                      radius: SkdSizes.sm,
                      backgroundColor:
                          SkdColors.secondary.withValues(alpha: 0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: SkdSizes.sm, vertical: SkdSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: SkdColors.black),
                      ),
                    ),
                  ),

                  ///Circular Icon
                  Positioned(
                    right: 0,
                    top: 0,
                    child: SkdCircularIcon(
                        dark: dark, icon: Iconsax.heart5, color: Colors.red),
                  )
                ],
              ),
            ),
            SizedBox(
              height: SkdSizes.spaceBtwItems / 2,
            ),

            ///Details
            Padding(
              padding: EdgeInsets.only(left: SkdSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkdProductTitleText(
                    title: 'Green Nike Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: SkdSizes.spaceBtwItems / 2,
                  ),
                  SkdBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),

            /// Todo: Add Spacer() here to keep height of each box same in case 1 or 2 lines of headings,
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                Padding(
                  padding: const EdgeInsets.only(left: SkdSizes.sm),
                  child: SkdProductPriceText(
                    price: '35.0',
                  ),
                ),

                ///Add to Cart Button
                Container(
                  decoration: BoxDecoration(
                      color: SkdColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(SkdSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(SkdSizes.productImageRadius))),
                  child: SizedBox(
                      height: SkdSizes.iconLg * 1.2,
                      width: SkdSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: SkdColors.white,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

