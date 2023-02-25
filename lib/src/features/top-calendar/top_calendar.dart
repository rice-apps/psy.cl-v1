import 'package:flutter/material.dart';
import '../progress-circle/progress_circle.dart';
import './mini_calendar_day.dart';

class TopCalendar extends StatefulWidget {
  const TopCalendar({super.key});

  @override
  _TopCalendar createState() => _TopCalendar();
}

class _TopCalendar extends State<TopCalendar> {
  // Fetch date data
  DateTime today = DateTime.now();
  late final DateTime _lastDay = DateTime.utc(today.year, today.month + 1, 0);
  late final DateTime _firstDay = DateTime.utc(today.year, today.month, 1);
  DateTime? _selectedDay;
  late int _currentDay = today.day;
  late int _currentMonth = today.month;
  late int _currentYear = today.year;
  late List<GestureDetector> days = generateDays(_lastDay.day);
  final PageController controller = PageController(viewportFraction: 0.2);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        child: PageView.builder(
          controller: controller,
          itemCount: days.length,
          onPageChanged: (int index) => setState(() {
            _currentDay = index + 1;
          }),
          itemBuilder: (context, idx) {
            return Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: days[idx],
            );
          },
        ));
  }

  /// Generates a list of [numDays] clickable days for the mini-calendar
  List<GestureDetector> generateDays(int numDays) {
    List<GestureDetector> days = [];
    for (int i = 0; i < numDays; i++) {
      DateTime targetDay = DateTime(_currentYear, _currentMonth, i + 1);
      print(targetDay);
      days.add(GestureDetector(
        child: MiniCalendarDay(
          month: today.month,
          day: i + 1,
          label: intToWeekday(targetDay.weekday),
        ),
      ));
    }

    return days;
  }

  /// Converts a integer 0-7 into an abbreviated weekday name
  String intToWeekday(int num) {
    assert(num >= 0 && num <= 7);
    Map<int, String> weekdays = {
      1: 'Mon',
      2: 'Tues',
      3: 'Wed',
      4: 'Thurs',
      5: 'Fri',
      6: 'Sat',
      7: 'Sun'
    };

    return weekdays[num]!;
  }
}
