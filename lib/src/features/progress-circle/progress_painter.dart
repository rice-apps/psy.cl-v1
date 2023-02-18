import "package:flutter/material.dart";
import './phase.dart';
import 'utils.dart' as utils;

class SectionedCircle extends CustomPainter {
  final double radius;
  final List<Phase> phases;
  final int currentDay;

  SectionedCircle(
      {required this.phases, required this.radius, required this.currentDay});

  @override
  void paint(Canvas canvas, Size size) {
    Offset offset = size.center(Offset(0, 0));
    Rect circleBounds = Rect.fromCircle(center: offset, radius: radius);

    // Draw phase arcs
    phases.forEach((phase) {
      phase.draw(canvas, circleBounds,
          utils.isInArc(phase.startDay, phase.endDay, currentDay, 28));
    });
  }

  @override
  bool shouldRepaint(SectionedCircle oldDelegate) => true;
}
