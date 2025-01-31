import 'package:flutter/cupertino.dart';

import '../../../utils/constants/sizes.dart';

class SkdGridLayout extends StatelessWidget {
  const SkdGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: mainAxisExtent,
            mainAxisSpacing: SkdSizes.gridViewSpacing,
            crossAxisSpacing: SkdSizes.gridViewSpacing),
        itemBuilder: itemBuilder);
  }
}
