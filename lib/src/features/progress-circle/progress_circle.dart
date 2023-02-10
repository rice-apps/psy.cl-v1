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
    final rawSize = MediaQuery.of(context).size;
    final shortSize = rawSize.shortestSide;
    final size = Size(shortSize, shortSize);
    final radius = shortSize * 0.4;
    final baseMiniSize = radius * 0.4;
    final mutMiniSize = baseMiniSize * (_heldDown ? 1.1 : 1);
    final centerCircleSize = radius * 2 * 0.75;

    return Stack(alignment: Alignment.center, children: [
      CustomPaint(
        painter: SectionedCircle(
            phases: phases, currentDay: _currentDay, radius: radius),
        size: size,
        isComplex: true,
      ),
      Container(
        alignment: Alignment.center,
        height: centerCircleSize,
        width: centerCircleSize,
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
          left: radius * math.cos(_angle) + size.width / 2 - baseMiniSize / 2,
          top: radius * math.sin(_angle) + size.height / 2 - baseMiniSize / 2,
          child: AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 100),
            height: mutMiniSize,
            width: mutMiniSize,
            child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onPanStart: (details) {
                  setState(() {
                    _heldDown = true;
                  });
                },
                onPanEnd: (details) {
                  setState(() {
                    _heldDown = false;
                  });
                },
                onPanUpdate: (details) {
                  _onPanUpdate(details, size, radius);
                },
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
                  _onLongPressMoveUpdate(details, size, radius);
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

  void _updateAngle(double x, double y, Size size, double radius) {
    double dx = x - size.width / 2;
    double dy = y - size.height / 2;
    double newAngle = math.atan2(dy, dx);
    setState(() {
      _angle = newAngle;
      _currentDay = utils.toDays(_angle, cycleLength);
      _currentPhase = getCurrentPhase(phases);
    });
  }

  void _onPanUpdate(DragUpdateDetails details, Size size, double radius) {
    _updateAngle(
        details.globalPosition.dx, details.globalPosition.dy, size, radius);
  }

  void _onLongPressMoveUpdate(
      LongPressMoveUpdateDetails details, Size size, double radius) {
    _updateAngle(
        details.globalPosition.dx, details.globalPosition.dy, size, radius);
  }
}
