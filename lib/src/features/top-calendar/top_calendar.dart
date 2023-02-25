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
  late List<GestureDetector> days = generateDays(30);
  final PageController controller = PageController(viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 75,
    //   child: ListView.separated(
    //     itemCount: days.length,
    //     separatorBuilder: (BuildContext context, int index) =>
    //         SizedBox(width: 10),
    //     itemBuilder: (BuildContext context, int index) {
    //       return days[index];
    //     },
    //     scrollDirection: Axis.horizontal,
    //   ),
    // );
    return Container(
        height: 75,
        child: PageView.builder(
          controller: controller,
          itemCount: days.length,
          onPageChanged: (int index) => setState(() {
            _currentDay = index + 1;
          }),
          itemBuilder: (context, idx) {
            return days[idx];
          },
        ));
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
