import 'package:flutter/material.dart';
import 'progress_painter.dart';
import '../../../assets/constants.dart' as constants;
import './phase.dart';
import 'dart:math' as math;

class ProgressCircle extends StatefulWidget {
  const ProgressCircle({super.key});

  @override
  _ProgressCircle createState() => _ProgressCircle();
}

class _ProgressCircle extends State<ProgressCircle> {
  // Hard-coded; fetch user value
  int currentDay = 19;

  // Hard-coded; populate this list with actual user data
  List<Phase> phases = [
    Phase(0, 7, constants.PERIOD),
    Phase(7, 12, constants.FOLLICULAR),
    Phase(12, 19, constants.OVULATION),
    Phase(19, 28, constants.LUTEAL)
  ];

  @override
  Widget build(BuildContext context) {
    final shortSize = MediaQuery.of(context).size.shortestSide;
    final size = Size(shortSize, shortSize);
    const radiusFactor = 0.4;
    return Stack(alignment: Alignment.center, children: [
      CustomPaint(
        painter: SectionedCircle(
            phases: phases, currentDay: currentDay, radiusFactor: radiusFactor),
        size: size,
        isComplex: true,
      ),
      Container(
        alignment: Alignment.center,
        height: size.height * radiusFactor * 1.45,
        width: size.width * radiusFactor * 1.45,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: constants.WHITE,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 100,
                  color: Colors.grey.shade400,
                  spreadRadius: -4)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "10 days until period starts",
              style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 30,
                  color: Colors.grey.shade800),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("ovulation phase",
                style: TextStyle(
                    fontFamily: "Metropolis",
                    fontSize: 15,
                    color: Colors.purple.shade300))
          ],
        ),
      )
    ]);
  }
}
