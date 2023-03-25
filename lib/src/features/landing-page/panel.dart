import 'package:flutter/material.dart';
import './buttons.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: <Widget>[
          const SizedBox(height: 36),
          buildAboutText(),
          const SizedBox(height: 24),
        ],
      );

  Widget buildAboutText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[Buttons()],
        ),
      );
  
  Widget buildPopUp(BuildContext context) => Container(
    child: ElevatedButton(
              child: Text('Popup Button'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('What do my phases mean?'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Your cycle typically consists of four main phases: follicular, period, ovulation, and luteal!'
                        ),
                        SizedBox(height: 12),
                        Text("""
                          Follicular\n\n\n\n
                          Period\n\n\n\n
                          Ovulation\n\n\n\n
                          Luteal\n\n\n\n
                          """),
                      ],
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () => Navigator.pop(context),
                        ),
                    ],
                  ),
                );
              }),
    );
}
