import 'package:flutter/material.dart';
import './button.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _Buttons();
}

class _Buttons extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
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

    return Column(children: [customRowOne, customRowTwo, customRowThree]);
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
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(children: [
          const SizedBox(height: 5),
          Material(
              child: Text(header,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))),
          const SizedBox(height: 5),
          Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                        normalImg: imageSrc1,
                        invertedImg: invertImageSrc1,
                      ),
                      Button(
                          normalImg: imageSrc2, invertedImg: invertImageSrc2),
                      Button(
                          normalImg: imageSrc3, invertedImg: invertImageSrc3),
                      Button(normalImg: imageSrc4, invertedImg: invertImageSrc4)
                    ],
                  ))),
          const SizedBox(height: 15),
          const Divider(thickness: 2, color: Colors.black),
        ]));
  }
}
