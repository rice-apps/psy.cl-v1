import "package:flutter/material.dart";
import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;
import './phase.dart';

class Arc extends CustomPainter {
  final Paint periodPaint = Paint()
    ..color = constants.PERIOD
    ..style = PaintingStyle.stroke
    ..strokeWidth = constants.STROKE_WIDTH;
  final Paint follPaint = Paint()
    ..color = constants.FOLLICULAR
    ..style = PaintingStyle.stroke
    ..strokeWidth = constants.STROKE_WIDTH;
  final Paint ovulPaint = Paint()
    ..color = constants.OVULATION
    ..style = PaintingStyle.stroke
    ..strokeWidth = constants.STROKE_WIDTH;
  final Paint lutealPaint = Paint()
    ..color = constants.LUTEAL
    ..style = PaintingStyle.stroke
    ..strokeWidth = constants.STROKE_WIDTH;

  List<Phase> phases = [
    Phase(0, 7, constants.PERIOD),
    Phase(7, 12, constants.FOLLICULAR),
    Phase(12, 19, constants.OVULATION),
    Phase(19, 28, constants.LUTEAL)
  ];

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;
    Rect circleBounds = Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2 + 10),
        width: size.width,
        height: size.height);
    // canvas.drawArc(
    //     Rect.fromCenter(
    //         center: Offset(size.height / 2, size.width / 2),
    //         width: size.width,
    //         height: size.height),
    //     0,
    //     math.pi,
    //     false,
    //     periodPaint);
    phases.forEach((phase) {
      canvas.drawArc(circleBounds, phase.startRadians, phase.sweepRadians,
          false, phase.paint);
    });
  }

  // Since this Sky painter has no fields, it always paints
  // the same thing and semantics information is the same.
  // Therefore we return false here. If we had fields (set
  // from the constructor) then we would return true if any
  // of them differed from the same fields on the oldDelegate.
  @override
  bool shouldRepaint(Arc oldDelegate) => false;
}
