import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_Container.dart';

class SkdPrimaryHeaderContainer extends StatelessWidget {
  const SkdPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SkdCurvedEdgesWidgets(
      child: Container(
        color: SkdColors.primary,
        child: Stack(
          children: [
            // -- Background Custom Shapes
            Positioned(
                top: -150,
                right: -250,
                child: SkdCircularContainer(
                    backgroundColor: Colors.white.withValues(alpha: 0.1))),
            Positioned(
                top: 100,
                right: -300,
                child: SkdCircularContainer(
                    backgroundColor: Colors.white.withValues(alpha: 0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
