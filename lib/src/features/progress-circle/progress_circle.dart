import 'package:flutter/material.dart';
import 'progress_painter.dart';
import '../../../assets/constants.dart' as constants;

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
          child: Container(
            alignment: Alignment.center,
            height: size.height,
            width: size.width,
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
          ))
    ]);
  }
}
