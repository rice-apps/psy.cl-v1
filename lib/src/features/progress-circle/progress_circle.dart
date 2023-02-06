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
  int currentDay = 1;
  int cycleLength = 28;

  // Hard-coded; populate this list with actual user data
  late List<Phase> phases = [
    Phase(
        name: 'period',
        startDay: 1,
        endDay: 8,
        circumference: cycleLength,
        activeColor: constants.period,
        inactiveColor: constants.fadedPeriod),
    Phase(
        name: 'follicular',
        startDay: 8,
        endDay: 14,
        circumference: cycleLength,
        activeColor: constants.follicular,
        inactiveColor: constants.fadedFollicular),
    Phase(
        name: 'ovulation',
        startDay: 14,
        endDay: 20,
        circumference: cycleLength,
        activeColor: constants.ovulation,
        inactiveColor: constants.fadedOvulation),
    Phase(
        name: 'luteal',
        startDay: 20,
        endDay: 1,
        circumference: cycleLength,
        activeColor: constants.luteal,
        inactiveColor: constants.fadedLuteal),
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
        height: size.height * 0.6,
        width: size.width * 0.6,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: constants.white,
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
