import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/curved_edges/curved_edges.dart';

class SsappCurvedWidget extends StatelessWidget {
  const SsappCurvedWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SsappCurvedEdges(),
      child: child,
    );
  }
}
