import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;

    return File("$path/buttonInfo.txt");
  }

  Future<int> readButtons() async {
    try {
      final file = await _localFile;

      String contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      return 0;
    }
  }

  Future<File> writeButtons(int counter) async {
    final file = await _localFile;

    return file.writeAsString('$counter');
  }
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  final CounterStorage storage = CounterStorage();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  @override
  void initState() {
    widget.storage.readButtons().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });
    return widget.storage.writeButtons(_counter);
  }

  bool isPressed1 = true;
  bool isPressed2 = true;
  bool isPressed3 = false;
  bool isPressed4 = false;
  @override
  Map<String, String> invertImage = {};
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget customRowOne = _buildCustomButtonRow(
        'assets/images/low.png',
        'assets/images/invertLow.png',
        'assets/images/spotting.png',
        'assets/images/invertSpotting.png',
        'assets/images/normal.png',
        'assets/images/invertNormal.png',
        'assets/images/high.png',
        'assets/images/invertHigh.png',
        "Bleeding",
        isPressed1,
        isPressed2,
        isPressed3,
        isPressed4);
    Widget customRowTwo = _buildCustomButtonRow(
        'assets/images/exhausted.png',
        'assets/images/invertExhausted.png',
        'assets/images/tired.png',
        'assets/images/invertTired.png',
        'assets/images/normalEnergy.png',
        'assets/images/invertNormalEnergy.png',
        'assets/images/energized.png',
        'assets/images/invertEnergized.png',
        "Energy",
        isPressed1,
        isPressed2,
        isPressed3,
        isPressed4);
    Widget customRowThree = _buildCustomButtonRow(
        'assets/images/PMS.png',
        'assets/images/invertPMS.png',
        'assets/images/sensitive.png',
        'assets/images/invertSensitive.png',
        'assets/images/sad.png',
        'assets/images/invertSad.png',
        'assets/images/happy.png',
        'assets/images/invertHappy.png',
        "Mood",
        isPressed1,
        isPressed2,
        isPressed3,
        isPressed4);

    return MaterialApp(
        title: 'Flutter layout demo',
        home: Container(
            color: Color.fromARGB(255, 201, 90, 90),
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 615,
                width: 600,
                color: Colors.white,
                child: Column(
                    children: [customRowOne, customRowTwo, customRowThree]))));
  }

  bool _isPressed = false;
  Widget buildButton(String imageSrc, String invertedImageSrc, bool isPressed) {
    return Material(
        color: Color.fromARGB(255, 141, 184, 219),
        elevation: 8,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                  color: Color.fromARGB(255, 236, 139, 132), width: 3),
            ),
            child: InkWell(
                onTap: () => {
                      setState(() {
                        isPressed = !isPressed;
                        _incrementCounter();
                      })
                    },
                child: Ink.image(
                  image: (isPressed
                      ? AssetImage(invertedImageSrc)
                      : AssetImage(imageSrc)),
                  height: 83,
                  width: 83,
                  fit: BoxFit.cover,
                ))));
  }

  Container _buildCustomButtonRow(
      String imageSrc1,
      String invertImageSrc1,
      String imageSrc2,
      String invertImageSrc2,
      String imageSrc3,
      String invertImageSrc3,
      String imageSrc4,
      String invertImageSrc4,
      String header,
      bool isPressed1,
      bool isPressed2,
      bool isPressed3,
      bool isPressed4) {
    return Container(
        height: 175,
        margin: const EdgeInsets.only(top: 15, bottom: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.fromARGB(135, 77, 76, 76),
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75))
          ],
        ),
        child: Column(children: [
          const SizedBox(height: 15),
          Material(
              child: Text(header,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))),
          const SizedBox(height: 15),
          Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildButton(imageSrc1, invertImageSrc1, isPressed1),
                      buildButton(imageSrc2, invertImageSrc2, isPressed2),
                      buildButton(imageSrc3, invertImageSrc3, isPressed3),
                      buildButton(imageSrc4, invertImageSrc4, isPressed4)
                    ],
                  )))
        ]));
  }
}
