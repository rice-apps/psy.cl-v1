import 'package:flutter/material.dart';

class MiniCalendarDay extends StatefulWidget {
  const MiniCalendarDay({super.key, required this.label});
  final String label;

  @override
  _MiniCalendarDay createState() => _MiniCalendarDay();
}

class _MiniCalendarDay extends State<MiniCalendarDay> {
  final bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.amber),
    );
  }
}
