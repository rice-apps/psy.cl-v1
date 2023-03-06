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
      margin: EdgeInsets.only(top: 25, bottom: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.transparent,
          boxShadow: widget.selected
              ? [
                  BoxShadow(
                      color: Color.fromARGB(255, 148, 79, 178),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 20)
                ]
              : []),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.label,
            style: TextStyle(
                fontFamily: "Metropolis",
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500),
          ),
          SizedBox(
            height: 8,
          ),
          Text(widget.day.toString(),
              style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700))
        ],
      ),
    );
  }
}
