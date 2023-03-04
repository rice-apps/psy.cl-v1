import 'package:flutter/material.dart';
import 'package:psycl/src/features/top-calendar/month_nav_button.dart';

class MonthNavigator extends StatelessWidget {
  const MonthNavigator({super.key, required this.month, required this.updater});
  final int month;
  final void Function(int) updater;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MonthNavButton(
            icon: Icons.chevron_left, increment: -1, updater: updater),
        Text(intToMonthName(month)),
        MonthNavButton(
            icon: Icons.chevron_right, increment: 1, updater: updater)
      ],
    );
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
