import 'dart:math';

import 'package:flutter/material.dart';

class PageReveal extends StatelessWidget {
  final double revealPercent;
  final Widget child;

  const PageReveal({Key key, this.revealPercent, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipper: CircleRevealClipper(revealPercent),
    );
  }
}

class CircleRevealClipper extends CustomClipper<Rect> {
  final double revealPercent;

  CircleRevealClipper( this.revealPercent);

  @override
  Rect getClip(Size size) {
    final epicCenter = Offset(size.width/2, size.height* 0.9);

    double theta = atan(epicCenter.dy / epicCenter.dx);
    final distanceToCorner = epicCenter.dy / sin(theta);

    final radius = distanceToCorner * revealPercent;
    final diameter = 2 * radius;

    return Rect.fromLTWH(
        epicCenter.dx - radius,
        epicCenter.dy - radius,
        diameter,
        diameter
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}
