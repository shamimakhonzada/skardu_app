import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skardu_app/features/shop/controllers/home_controller.dart';
import 'package:skardu_app/utils/constants/color.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_Container.dart';
import '../../../../common/widgets/images/skd_rounded_image.dart';
import '../../../../utils/constants/sizes.dart';

class SkdPromoSlider extends StatelessWidget {
  const SkdPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners
              .map((url) => SkdRoundedImage(
                    imageUrl: url,
                  ))
              .toList(),
        ),
        SizedBox(height: SkdSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                SkdCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? SkdColors.primary
                        : SkdColors.grey),
            ],
          ),
        )
      ],
    );
  }
}
