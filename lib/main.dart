import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import './src/widget/panel.dart';
import './src/widget/background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        body: Center(
          child: Text("This is the Widget behind the sliding panel"),
        ),
      ),
    );
  }

  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.6;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.1;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: panelHeightOpen,
        minHeight: panelHeightClosed,
        parallaxEnabled: true,
        parallaxOffset: .5,
        body: const BackgroundColorPage(), // will be background
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: const [
          BoxShadow(blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.5))
        ],
      ),
    );
  }
}
