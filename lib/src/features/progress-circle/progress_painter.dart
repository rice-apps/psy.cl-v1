import "package:flutter/material.dart";
import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;
import './phase.dart';

class SectionedCircle extends CustomPainter {
  final double radiusFactor;
  final List<Phase> phases;
  final int currentDay;

  SectionedCircle(
      {required this.phases,
      required this.radiusFactor,
      required this.currentDay});

  @override
  void paint(Canvas canvas, Size size) {
    Offset offset = Offset(size.height / 2, size.width / 2);
    final double radius = math.min(size.height, size.width) * radiusFactor;
    Rect circleBounds = Rect.fromCircle(center: offset, radius: radius);

    // Draw phase arcs
    phases.forEach((phase) {
      phase.draw(canvas, circleBounds,
          currentDay >= phase.startDay && currentDay < phase.endDay);
    });
  }

  @override
  bool shouldRepaint(SectionedCircle oldDelegate) => true;
}
