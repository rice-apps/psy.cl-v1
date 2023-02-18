import 'dart:math' as math;
import '../../../assets/constants.dart' as constants;
import 'utils.dart' as utils;
import 'package:flutter/material.dart';

/// Represents a section on the progress circle
class Phase {
  String name;
  int startDay;
  int endDay;
  int circumference;
  Color activeColor;
  Color inactiveColor;
  Paint paint = Paint();
  double startRadians = 0;
  double sweepRadians = 0;

  /// Creates a Phase ranging from [startDay] (inclusive) to [endDay] (exclusive).
  Phase(
      {required this.name,
      required this.startDay,
      required this.endDay,
      required this.circumference,
      required this.activeColor,
      required this.inactiveColor}) {
    paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = constants.strokeWidth
      ..strokeCap = StrokeCap.round;
    startRadians = utils.toRadians(startDay, circumference);
    sweepRadians = (utils.toRadians(endDay, circumference) -
            utils.toRadians(startDay, circumference)) %
        (2 * math.pi);
  }

  void draw(Canvas canvas, Rect rect, bool selected) {
    canvas.drawArc(
      rect,
      startRadians,
      sweepRadians,
      false,
      paint
        ..color = selected ? activeColor : inactiveColor
        ..maskFilter = MaskFilter.blur(BlurStyle.solid, selected ? 10 : 0),
    );
  }
}
