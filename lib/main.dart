import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

bool _isPressed1 = true;
bool _isPressed2 = true;
bool _isPressed3 = true;
bool _isPressed4 = true;

class _MyApp extends State<MyApp> {
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
        "Bleeding");
    Widget customRowTwo = _buildCustomButtonRow(
        'assets/images/exhausted.png',
        'assets/images/invertExhausted.png',
        'assets/images/tired.png',
        'assets/images/invertTired.png',
        'assets/images/normalEnergy.png',
        'assets/images/invertNormalEnergy.png',
        'assets/images/energized.png',
        'assets/images/invertEnergized.png',
        "Energy");
    Widget customRowThree = _buildCustomButtonRow(
        'assets/images/PMS.png',
        'assets/images/invertPMS.png',
        'assets/images/sensitive.png',
        'assets/images/invertSensitive.png',
        'assets/images/sad.png',
        'assets/images/invertSad.png',
        'assets/images/happy.png',
        'assets/images/invertHappy.png',
        "Mood");

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
        color: Colors.blue,
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
                        _isPressed = !_isPressed;
                      })
                    },
                child: Ink.image(
                  image: (_isPressed
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
      String header) {
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
                      buildButton(imageSrc1, invertImageSrc1, _isPressed1),
                      buildButton(imageSrc2, invertImageSrc2, _isPressed2),
                      buildButton(imageSrc3, invertImageSrc3, _isPressed3),
                      buildButton(imageSrc4, invertImageSrc4, _isPressed4)
                    ],
                  )))
        ]));
  }
}
