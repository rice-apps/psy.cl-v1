import 'package:flutter/material.dart';

class MiniCalendarDay extends StatefulWidget {
  const MiniCalendarDay(
      {super.key, required this.month, required this.day, required this.label});
  final int month;
  final int day;
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
      width: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.amber),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(widget.label), Text(widget.day.toString())],
      ),
    );
  }
}
