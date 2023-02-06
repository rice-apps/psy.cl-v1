import 'package:flutter/material.dart';
import 'progress_painter.dart';
import '../../../assets/constants.dart' as constants;
import './phase.dart';
import 'dart:math' as math;
import 'utils.dart' as utils;

class ProgressCircle extends StatefulWidget {
  const ProgressCircle({super.key});

  @override
  _ProgressCircle createState() => _ProgressCircle();
}

class _ProgressCircle extends State<ProgressCircle> {
  // Hard-coded; fetch user value
  int currentDay = 17;
  int cycleLength = 28;

  // Hard-coded; populate this list with actual user data
  List<Phase> phases = [
    Phase('period', 1, 8, constants.PERIOD, constants.FADED_PERIOD),
    Phase(
        'follicular', 8, 12, constants.FOLLICULAR, constants.FADED_FOLLICULAR),
    Phase('ovulation', 12, 19, constants.OVULATION, constants.FADED_OVULATION),
    Phase('luteal', 19, 1, constants.LUTEAL, constants.FADED_LUTEAL)
  ];

  late Phase periodPhase =
      phases.firstWhere((element) => element.name == 'period');
  late Phase currentPhase = phases.firstWhere((element) =>
      utils.isInArc(element.startDay, element.endDay, currentDay, cycleLength));

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
              createInnerText(),
              style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 30,
                  color: Colors.grey.shade800),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("${currentPhase.name} phase",
                style: TextStyle(
                    fontFamily: "Metropolis",
                    fontSize: 15,
                    color: Colors.purple.shade300))
          ],
        ),
      )
    ]);
  }

  String createInnerText() {
    if (utils.isInArc(
        periodPhase.startDay, periodPhase.endDay, currentDay, cycleLength)) {
      return '${utils.getDistance(currentDay, periodPhase.endDay, cycleLength)} days until period ends';
    } else {
      return '${utils.getDistance(currentDay, periodPhase.startDay, cycleLength)} days until period starts';
    }
  }
}
