import 'package:flutter/material.dart';
import 'package:psycl/src/features/progress-circle/painter.dart';

class ProgressCircle extends StatefulWidget {
  @override
  _ProgressCircle createState() => _ProgressCircle();
}

class _ProgressCircle extends State<ProgressCircle> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Arc(),
      size: Size(250, 250),
    );
  }
}
