import 'package:flutter/material.dart';

class MiniCalendarDay extends StatefulWidget {
  const MiniCalendarDay(
      {super.key,
      required this.month,
      required this.day,
      required this.label,
      required this.selected});
  final int month;
  final int day;
  final String label;
  final bool selected;

  @override
  _MiniCalendarDay createState() => _MiniCalendarDay();
}

class _MiniCalendarDay extends State<MiniCalendarDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.transparent,
          boxShadow: widget.selected
              ? [
                  BoxShadow(
                      color: Colors.purple,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 10)
                ]
              : []),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.label),
          SizedBox(
            height: 8,
          ),
          Text(widget.day.toString())
        ],
      ),
    );
  }
}
