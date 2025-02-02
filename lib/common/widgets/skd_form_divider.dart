import 'package:flutter/material.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

import '../../utils/constants/color.dart';

class SkdFormDivider extends StatelessWidget {
  const SkdFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? SkdColors.darkGrey : SkdColors.grey,
            thickness: 0.5,
            indent: 50,
            endIndent: 10,
          ),
        ),
        Text(
        dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? SkdColors.darkGrey : SkdColors.grey,
            thickness: 0.5,
            indent: 10,
            endIndent: 50,
          ),
        )
      ],
    );
  }
}
