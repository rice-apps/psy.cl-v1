import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;

import 'package:flutter/material.dart';

/// Represents a section on the progress circle
class Phase {
  int startDay;
  int endDay;
  Color color;
  Paint paint = Paint();

  Phase(this.startDay, this.endDay, this.color) {
    paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = constants.STROKE_WIDTH;
  }

  List<double> toRadians() {
    return [
      2 * math.pi * (startDay / 28) - math.pi / 2,
      2 * math.pi * (endDay / 28) - math.pi / 2
    ];
  }
}
