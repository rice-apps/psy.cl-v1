import 'package:flutter/material.dart';
import '../progress-circle/progress_circle.dart';
import './mini_calendar_day.dart';

class TopCalendar extends StatefulWidget {
  const TopCalendar({super.key});

  @override
  _TopCalendar createState() => _TopCalendar();
}

class _TopCalendar extends State<TopCalendar> {
  int _currentDay = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: generateDays(10),
    );
  }

  /// Generates a list of [numDays] clickable days for the mini-calendar
  List<GestureDetector> generateDays(int numDays) {
    List<GestureDetector> days = [];
    for (int i = 0; i < numDays; i++) {
      days.add(GestureDetector(
        child: MiniCalendarDay(label: (i + 1).toString()),
      ));
    }

    return days;
  }
}
