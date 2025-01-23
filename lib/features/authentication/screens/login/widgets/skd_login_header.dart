import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SkdLoginHeader extends StatelessWidget {
  const SkdLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: double.infinity,
          height: 150,
          image:
              AssetImage(dark ? SkdImage.lightAppLogo : SkdImage.darkAppLogo),
        ),
        Text(
          SkdStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: SkdSizes.sm,
        ),
        Text(
          SkdStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        //
      ],
    );
  }
}
