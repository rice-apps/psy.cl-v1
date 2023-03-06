import 'package:flutter/material.dart';

class MonthNavButton extends StatelessWidget {
  MonthNavButton(
      {super.key,
      required this.icon,
      required this.increment,
      required this.updater});
  final void Function(int) updater;
  final int increment;
  final IconData icon;

  final arrowColor = Colors.grey.shade700;
  final double arrowSize = 32;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        icon,
        color: arrowColor,
        size: arrowSize,
      ),
      onTap: () => updater(increment),
    );
  }
}
