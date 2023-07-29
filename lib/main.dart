import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'src/features/landing-page/panel.dart';
import 'src/features/landing-page/background.dart';
import 'src/features/landing-page/sliding_background.dart';

import './assets/constants.dart' as constants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Psy.cl',
      home: const MyHomePage(title: 'Psy.cl Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(),
    );
  }

  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final panelHeightOpen =
        MediaQuery.of(context).size.height * constants.maxPanelHeight;
    final panelHeightClosed =
        MediaQuery.of(context).size.height * constants.minPanelHeight;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: panelHeightOpen,
        minHeight: panelHeightClosed,
        parallaxEnabled: true,
        parallaxOffset: 1,
        body: Stack(children: [BackgroundColorPage(), PagedBackground()]),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: const [
          BoxShadow(blurRadius: 8.0, color: constants.darkGray)
        ],
      ),
    );
  }
}
