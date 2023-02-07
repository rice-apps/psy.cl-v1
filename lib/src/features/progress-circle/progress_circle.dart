import 'package:flutter/material.dart';
import 'progress_painter.dart';
import '../../../assets/constants.dart' as constants;
import './phase.dart';
import 'dart:math' as math;
import 'utils.dart' as utils;
import 'dart:async';

class ProgressCircle extends StatefulWidget {
  const ProgressCircle({super.key});

  @override
  _ProgressCircle createState() => _ProgressCircle();
}

class _ProgressCircle extends State<ProgressCircle> {
  // Hard-coded; fetch user value
  int _currentDay = 17;
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
  late Phase _currentPhase = getCurrentPhase(phases);

  @override
  void initState() {
    Timer _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_currentDay == cycleLength) {
          _currentDay = 1;
        } else {
          _currentDay++;
        }

        _currentPhase = phases.firstWhere((element) => utils.isInArc(
            element.startDay, element.endDay, _currentDay, cycleLength));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final shortSize = MediaQuery.of(context).size.shortestSide;
    final size = Size(shortSize, shortSize);
    final radius = shortSize * 0.4;
    return Stack(alignment: Alignment.center, children: [
      CustomPaint(
        painter: SectionedCircle(
            phases: phases, currentDay: _currentDay, radius: radius),
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
            Text("${_currentPhase.name} phase",
                style: TextStyle(
                    fontFamily: "Metropolis",
                    fontSize: 15,
                    color: _currentPhase.activeColor))
          ],
        ),
      ),
      Positioned(
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            height: radius * 0.4,
            width: radius * 0.4,
            decoration: BoxDecoration(
                color: constants.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20,
                      color: Colors.grey.shade800,
                      spreadRadius: -8)
                ]),
            child: Text(
              'day ${_currentDay}',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 15,
                  color: _currentPhase.activeColor),
              textAlign: TextAlign.center,
            ),
          ),
          left: radius * math.cos(utils.toRadians(_currentDay, cycleLength)) +
              radius,
          top: radius * math.sin(utils.toRadians(_currentDay, cycleLength)) +
              radius +
              10)
    ]);
  }

  late Timer timer = Timer(const Duration(seconds: 1), () {
    setState(() {
      if (_currentDay == cycleLength) {
        _currentDay = 1;
      } else {
        _currentDay++;
      }
      print(_currentDay);
    });
  });

  String createInnerText() {
    if (utils.isInArc(
        periodPhase.startDay, periodPhase.endDay, _currentDay, cycleLength)) {
      return '${utils.getDistance(_currentDay, periodPhase.endDay, cycleLength)} days until period ends';
    } else {
      return '${utils.getDistance(_currentDay, periodPhase.startDay, cycleLength)} days until period starts';
    }
  }

  Phase getCurrentPhase(List<Phase> phases) {
    return phases.firstWhere((element) => utils.isInArc(
        element.startDay, element.endDay, _currentDay, cycleLength));
  }
}
