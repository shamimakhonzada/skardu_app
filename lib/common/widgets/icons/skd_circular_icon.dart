import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';

class SkdCircularIcon extends StatelessWidget {
  const SkdCircularIcon({
    super.key,
    this.dark = false,
    this.width,
    this.height,
    this.size = SkdSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? SkdColors.dark.withValues(alpha: 0.9)
                : SkdColors.light.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
