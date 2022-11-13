import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _Calendar createState() => _Calendar();
}

class _Calendar extends State<Calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  late final DateTime _lastDay =
      DateTime.utc(_focusedDay.year, _focusedDay.month + 1, 0);
  late final DateTime _firstDay =
      DateTime.utc(_focusedDay.year, _focusedDay.month, 1);
  DateTime? _selectedDay;

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
            calendarFormat: _calendarFormat,
            pageJumpingEnabled: false,
            daysOfWeekVisible: false,
            rowHeight: 48.0,
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},
            selectedDayPredicate: (day) {
              // Use `selectedDayPredicate` to determine which day is currently selected.
              // If this returns true, then `day` will be marked as selected.

              // Using `isSameDay` is recommended to disregard
              // the time-part of compared DateTime objects.
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                // Call `setState()` when updating the selected day
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
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                leftChevronVisible: false,
                rightChevronVisible: false,
                headerPadding: EdgeInsets.only(left: 135, top: 50)),
            calendarStyle: CalendarStyle(
                rowDecoration: const BoxDecoration(color: Colors.transparent),
                outsideDaysVisible: false,
                defaultTextStyle: const TextStyle(color: Colors.white),
                selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)),
                weekendTextStyle: const TextStyle(color: Colors.white),
                todayDecoration: const BoxDecoration(
                    color: Color.fromARGB(174, 254, 100, 100),
                    shape: BoxShape.circle)),
          ),
        ));
  }
}
