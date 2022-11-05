import 'package:flutter/material.dart';
import 'progresscircle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProgressCircle(),
      debugShowCheckedModeBanner: false,
    );
  }
}
