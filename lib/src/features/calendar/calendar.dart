import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../assets/constants.dart' as constants;

class Calendar extends StatefulWidget {
  @override
  _Calendar createState() => _Calendar();
}

class _Calendar extends State<Calendar> {
  // Colors
  final Color _rangeHighlight = const Color.fromARGB(255, 255, 126, 126);

  // Styles
  final TextStyle _textStyle = const TextStyle(color: constants.WHITE);

  // Current date
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  late final DateTime _lastDay =
      DateTime.utc(_focusedDay.year, _focusedDay.month + 1, 0);
  late final DateTime _firstDay =
      DateTime.utc(_focusedDay.year, _focusedDay.month, 1);
  DateTime? _selectedDay;

  // Highlighted days
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  late final DateTime _rangeStart =
      DateTime.utc(_focusedDay.year, _focusedDay.month, _focusedDay.day - 10);
  late final DateTime _rangeEnd =
      DateTime.utc(_focusedDay.year, _focusedDay.month, _focusedDay.day - 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: TableCalendar(
            firstDay: _firstDay,
            lastDay: _lastDay,
            focusedDay: _focusedDay,
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            pageJumpingEnabled: false,
            daysOfWeekVisible: false,
            rowHeight: 48.0,
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                // Call `setState()` when updating calendar format
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              _focusedDay = focusedDay;
            },
            headerStyle: const HeaderStyle(
                titleTextStyle: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 32.0,
                  color: constants.WHITE,
                  fontWeight: FontWeight.bold,
                ),
                leftChevronVisible: false,
                rightChevronVisible: false,
                headerPadding: EdgeInsets.only(left: 135, top: 50)),
            calendarStyle: CalendarStyle(
                rowDecoration: const BoxDecoration(color: Colors.transparent),
                outsideDaysVisible: false,
                defaultTextStyle: _textStyle,
                selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: constants.PERIOD,
                    border: Border.all(color: constants.WHITE)),
                weekendTextStyle: _textStyle,
                todayDecoration: const BoxDecoration(
                    color: constants.PERIOD,
                    shape: BoxShape.circle),
                rangeHighlightColor: _rangeHighlight,
                rangeStartDecoration: BoxDecoration(
                    color: _rangeHighlight, shape: BoxShape.circle),
                rangeEndDecoration: BoxDecoration(
                    color: _rangeHighlight, shape: BoxShape.circle),
                withinRangeTextStyle: _textStyle),
          ),
        ));
  }
}
