import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({super.key, required this.child, this.showSkeleton = true});
  final Widget child;
  final bool showSkeleton;

  @override
  Widget build(BuildContext context) {
    return showSkeleton
        ? Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.white,
            child: child,
          )
        : child;
  }
}
