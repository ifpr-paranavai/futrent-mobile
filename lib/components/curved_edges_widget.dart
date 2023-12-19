import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/circular_container.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/styles/curved_edges.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvesEdges(),
      child: child,
    );
  }
}
