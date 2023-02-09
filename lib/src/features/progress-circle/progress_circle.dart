import 'package:flutter/material.dart';
import 'progress_painter.dart';
import '../../../assets/constants.dart' as constants;
import 'phase.dart';
import 'dart:math' as math;
import 'utils.dart' as utils;
import 'dart:async';

class ProgressCircle extends StatefulWidget {
  const ProgressCircle({super.key});

  @override
  _ProgressCircle createState() => _ProgressCircle();
}

class _ProgressCircle extends State<ProgressCircle> {
  bool _heldDown = false;
  // Hard-coded; fetch user values, set initial _angle to toRadians(_currentDay, cycleLength)
  double _angle = -math.pi / 2;
  late int _currentDay;
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
    super.initState();
    _angle = -math.pi / 2;
    _currentDay = utils.toDays(_angle, cycleLength);
    _currentPhase = getCurrentPhase(phases);
    // Timer _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
    //   setState(() {
    //     _angle = (_angle + 0.01) % (2 * math.pi);
    //     _currentDay = utils.toDays(_angle, cycleLength);
    //     _currentPhase = getCurrentPhase(phases);
    //   });
    // });
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
          left: radius * math.cos(_angle) + radius + 5,
          top: radius * math.sin(_angle) + radius + 5,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: radius * (_heldDown ? 0.45 : 0.40),
            width: radius * (_heldDown ? 0.45 : 0.40),
            child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onLongPressStart: (details) {
                  setState(() {
                    _heldDown = true;
                  });
                },
                onLongPressEnd: (details) {
                  setState(() {
                    _heldDown = false;
                  });
                },
                onLongPressMoveUpdate: (details) {
                  _onPanUpdate(details, size, radius);
                },
                child: Container(
                  padding: const EdgeInsets.all(9),
                  alignment: Alignment.center,
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
                    'day ${utils.toDays(_angle, cycleLength)}',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 15,
                        color: _currentPhase.activeColor),
                    textAlign: TextAlign.center,
                  ),
                )),
          ))
    ]);
  }

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

  void _onPanUpdate(
      LongPressMoveUpdateDetails details, Size size, double radius) {
    double posX = details.globalPosition.dx;
    double posY = details.globalPosition.dy;
    double dx = posX - size.width / 2;
    double dy = posY - size.height / 2;
    double newAngle = math.atan2(dy, dx);
    setState(() {
      _angle = newAngle;
      _currentDay = utils.toDays(_angle, cycleLength);
      _currentPhase = getCurrentPhase(phases);
    });
  }
}
