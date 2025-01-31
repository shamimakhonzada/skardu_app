import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';

class SkdShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: SkdColors.darkerGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: SkdColors.darkerGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
