import 'package:flutter/material.dart';
import '../progress-circle/progress_circle.dart';
import '../top-calendar/top_calendar.dart';

class CalendarCircleWrapper extends StatefulWidget {
  const CalendarCircleWrapper({super.key});

  @override
  _CalendarCircleWrapper createState() => _CalendarCircleWrapper();
}

class _CalendarCircleWrapper extends State<CalendarCircleWrapper> {
  int _currentDay = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TopCalendar(), ProgressCircle()],
    );
  }
}
