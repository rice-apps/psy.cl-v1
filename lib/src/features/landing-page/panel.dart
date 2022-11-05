import 'package:flutter/material.dart';

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
          children: const <Widget>[
            Text(
              'Data entry here',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12),
            Text("""
              Buttons here\n\n\n\n\n\n\n\n\n\n\n
              Buttons here\n\n\n\n\n\n\n\n\n\n\n
              Buttons here\n\n\n\n\n\n\n\n\n\n\n
              Buttons here\n\n\n\n\n\n\n\n\n\n\n
              """),
          ],
        ),
      );
}
