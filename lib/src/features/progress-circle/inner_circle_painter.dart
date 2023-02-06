import "package:flutter/material.dart";
import '../../../assets//constants.dart' as constants;
import 'dart:math' as math;

class InnerCircle extends CustomPainter {
  final double radiusFactor;
  InnerCircle({required this.radiusFactor});

  @override
  void paint(Canvas canvas, Size size) {
    Offset offset = Offset(size.height / 2, size.width / 2);
    final double radius =
        math.min(size.height, size.width) * radiusFactor * 0.75;

    Paint circlePaint = Paint()..color = Colors.white;
    canvas.drawShadow(
        Path()
          ..addOval(Rect.fromCircle(
              center: Offset(size.height / 2, size.width / 2 - 40),
              radius: radius)),
        Colors.grey,
        50,
        false);
    canvas.drawCircle(offset, radius, circlePaint);
  }

  @override
  bool shouldRepaint(InnerCircle oldDelegate) => false;
}
