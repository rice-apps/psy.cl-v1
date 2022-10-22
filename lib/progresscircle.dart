import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressCircle extends StatefulWidget {
  const ProgressCircle({super.key});

  @override
  State<ProgressCircle> createState() => _ProgressCircleState();
}

class _ProgressCircleState extends State<ProgressCircle> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularPercentIndicator(
          radius: 200,
          lineWidth: 20,
          percent: (_count / 28),
          progressColor: Colors.red,
          backgroundColor: Colors.red.shade200,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text('${28 - _count} days',
              style: const TextStyle(fontSize: 25, color: Colors.red)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _incrementCounter,
      ),
    );
  }
}
