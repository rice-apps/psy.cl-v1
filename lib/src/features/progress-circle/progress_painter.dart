import "package:flutter/material.dart";
import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;
import './phase.dart';

class SectionedCircle extends CustomPainter {
  final double radiusFactor;
  SectionedCircle({required this.radiusFactor});

  List<Phase> phases = [
    Phase(0, 7, constants.PERIOD),
    Phase(7, 12, constants.FOLLICULAR),
    Phase(12, 19, constants.OVULATION),
    Phase(19, 28, constants.LUTEAL)
  ];

  @override
  void paint(Canvas canvas, Size size) {
    Offset offset = Offset(size.height / 2, size.width / 2);
    final double radius = math.min(size.height, size.width) * radiusFactor;
    Rect circleBounds = Rect.fromCircle(center: offset, radius: radius);

    // Draw phase arcs
    phases.forEach((phase) {
      canvas.drawArc(circleBounds, phase.startRadians, phase.sweepRadians,
          false, phase.paint);
    });
  }

  @override
  bool shouldRepaint(SectionedCircle oldDelegate) => false;
}
