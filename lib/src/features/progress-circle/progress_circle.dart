import 'package:flutter/material.dart';
import 'progress_painter.dart';
import 'inner_circle_painter.dart';

class ProgressCircle extends StatefulWidget {
  const ProgressCircle({super.key});

  @override
  _ProgressCircle createState() => _ProgressCircle();
}

class _ProgressCircle extends State<ProgressCircle> {
  @override
  Widget build(BuildContext context) {
    const size = Size(250, 250);
    const radiusFactor = 2 / 3;
    return Stack(children: [
      Align(
          alignment: Alignment.center,
          child: CustomPaint(
            painter: SectionedCircle(radiusFactor: radiusFactor),
            size: size,
            isComplex: true,
          )),
      Align(
          alignment: Alignment.center,
          child: CustomPaint(
            child: SizedBox(
              child: Align(
                  alignment: Alignment.center,
                  child: Text("CYCLE DETAILS HERE")),
              height: size.height,
              width: size.width,
            ),
            painter: InnerCircle(radiusFactor: radiusFactor),
            size: size,
          ))
    ]);
  }
}
