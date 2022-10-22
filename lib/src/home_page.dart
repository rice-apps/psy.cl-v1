import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import './widget/panel.dart';
import './widget/background.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        body: BackgroundColorPage(), // will be background
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
      ),
    );
  }
}