import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class SkdVerticalImageText extends StatelessWidget {
  const SkdVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = SkdColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SkdSizes.spaceBtwItems),
        child: Column(
          children: [
            ///Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(SkdSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: backgroundColor ??
                    (dark ? SkdColors.black : SkdColors.white),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? SkdColors.white : SkdColors.dark,
                ),
              ),
            ),
            SizedBox(
              height: SkdSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
