import "package:flutter/material.dart";
import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;
import './phase.dart';

class Arc extends CustomPainter {
  List<Phase> phases = [
    Phase(0, 7, constants.PERIOD),
    Phase(7, 12, constants.FOLLICULAR),
    Phase(12, 19, constants.OVULATION),
    Phase(19, 28, constants.LUTEAL)
  ];

  @override
  void paint(Canvas canvas, Size size) {
    Rect circleBounds = Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2 + 10),
        width: size.width,
        height: size.height);

    phases.forEach((phase) {
      canvas.drawArc(circleBounds, phase.startRadians, phase.sweepRadians,
          false, phase.paint);
    });
  }

  @override
  bool shouldRepaint(Arc oldDelegate) => false;
}
