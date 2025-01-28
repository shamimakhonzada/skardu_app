import 'package:flutter/material.dart';

import 'curved_edges.dart';

class SkdCurvedEdgesWidgets extends StatelessWidget {
  const SkdCurvedEdgesWidgets({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SkdCustomCurvedEdges(),
      child: child,
    );
  }
}
