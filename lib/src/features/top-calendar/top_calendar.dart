import 'package:flutter/material.dart';
import '../progress-circle/progress_circle.dart';
import './mini_calendar_day.dart';
import './month_navigator.dart';

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
  late int _currentDay = today.day;
  late int _currentMonth = today.month;
  late int _currentYear = today.year;

  // Controller
  late final PageController controller =
      PageController(viewportFraction: 0.2, initialPage: _currentDay - 1);

  // Callback functions
  void _updateMonth(int increment) {
    setState(() {
      _currentMonth = ((_currentMonth + increment - 1) % 12) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        MonthNavigator(
          month: _currentMonth,
          updater: _updateMonth,
        ),
        Container(
            height: 120,
            clipBehavior: Clip.none,
            child: PageView.builder(
              controller: controller,
              itemCount: _lastDay.day,
              onPageChanged: (int index) => setState(() {
                _currentDay = index + 1;
              }),
              itemBuilder: (context, idx) {
                DateTime targetDay =
                    DateTime(_currentYear, _currentMonth, idx + 1);
                MiniCalendarDay miniDay = MiniCalendarDay(
                  month: targetDay.month,
                  day: targetDay.day,
                  label: intToWeekday(targetDay.weekday),
                  selected: targetDay.day == _currentDay,
                );
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: miniDay,
                );
              },
            ))
      ],
    );
  }

  /// Converts a integer 0-7 into an abbreviated weekday name
  String intToWeekday(int num) {
    assert(num >= 1 && num <= 7);
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

  /// Converts an integer 0-7 into its corresponding month's name
  String intToMonthName(int num) {
    assert(num >= 1 && num <= 12);
    Map<int, String> monthNames = {
      1: 'January',
      2: 'February',
      3: 'March',
      4: 'April',
      5: 'May',
      6: 'June',
      7: 'July',
      8: 'August',
      9: 'September',
      10: 'October',
      11: 'November',
      12: 'December'
    };

    return monthNames[num]!;
  }
}
