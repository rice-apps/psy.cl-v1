import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;

import 'package:flutter/material.dart';

/// Represents a section on the progress circle
class Phase {
  String name;
  int startDay;
  int endDay;
  Color color;
  Paint paint = Paint();
  double startRadians = 0;
  double sweepRadians = 0;

  /// Creates a Phase ranging from [startDay] (inclusive) to [endDay] (exclusive).
  Phase(this.name, this.startDay, this.endDay, this.color) {
    paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = constants.STROKE_WIDTH
      ..strokeCap = StrokeCap.round;
    startRadians = toRadians(startDay);
    sweepRadians = (toRadians(endDay) - toRadians(startDay)) % (2 * math.pi);
  }

  double toRadians(int days) {
    return 2 * math.pi * (days / 28) - math.pi / 2;
  }

  void draw(Canvas canvas, Rect rect, bool selected) {
    canvas.drawArc(rect, startRadians, sweepRadians, false, paint);
    if (selected) {
      canvas.drawArc(rect, startRadians, sweepRadians, false,
          paint..maskFilter = MaskFilter.blur(BlurStyle.outer, 10));
    }
  }
}
