import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/shapes/curve_edges/curved_edges.dart';

class HCurvesEdgesWidget extends StatelessWidget {
  const HCurvesEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HCurvedEdges(),
      child: child,
    );
  }
}
