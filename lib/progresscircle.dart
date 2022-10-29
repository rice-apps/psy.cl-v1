import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

class ProgressCircle extends StatefulWidget {
  const ProgressCircle({super.key});

  @override
  State<ProgressCircle> createState() => _ProgressCircleState();
}

class _ProgressCircleState extends State<ProgressCircle> {
  int _count = 14;

  void _incrementCounter(int init, int end, int laps) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _count = end;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade300,
      body: Stack(
        alignment: Alignment.center,
        children: [
          CircularPercentIndicator(
            radius: 300,
            lineWidth: 20,
            animation: false,
            animationDuration: 800,
            percent: (_count / 28),
            progressColor: Colors.white,
            backgroundColor: Colors.grey.shade300,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              '${28 - _count} days \n until period starts',
              style: const TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SingleCircularSlider(
            28,
            28 - _count,
            height: 300,
            width: 300,
            onSelectionChange: _incrementCounter,
          ),
        ],
      ),

      // Center(
      //   child: CircularPercentIndicator(
      //     radius: 300,
      //     lineWidth: 20,
      //     animation: true,
      //     animationDuration: 800,
      //     percent: (_count / 28),
      //     center: SingleCircularSlider(28, 1),

      //     progressColor: Colors.white,
      //     backgroundColor: Colors.grey.shade300,
      //     circularStrokeCap: CircularStrokeCap.round,
      //     //center: Text(
      //'${28 - _count} days \n until period starts',
      //style: const TextStyle(fontSize: 25, color: Colors.white),
      //textAlign: TextAlign.center,
      //),
    );
    //     ),
    //     floatingActionButton: FloatingActionButton(
    //       child: Icon(Icons.add),
    //       onPressed: _incrementCounter,
    //     ),
    //   );
    //}
  }
}
