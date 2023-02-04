import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class Arc extends CustomPainter {
  final Paint p1Paint = Paint()
    ..color = Color(0xFFECC2C2)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 20;
  final Paint p2Paint = Paint()
    ..color = Color(0xFFD9E7EA)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 20;
  final Paint p3Paint = Paint()
    ..color = Color(0xFFC2A3DB)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 20;
  final Paint p4Paint = Paint()
    ..color = Color(0xFFCCDED7)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 20;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.height / 2, size.width / 2),
            width: size.width,
            height: size.height),
        0,
        -math.pi,
        false,
        p1Paint);
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.height / 2, size.width / 2),
            width: size.width,
            height: size.height),
        0,
        math.pi,
        false,
        paint);
  }

  // Since this Sky painter has no fields, it always paints
  // the same thing and semantics information is the same.
  // Therefore we return false here. If we had fields (set
  // from the constructor) then we would return true if any
  // of them differed from the same fields on the oldDelegate.
  @override
  bool shouldRepaint(Arc oldDelegate) => false;
}
