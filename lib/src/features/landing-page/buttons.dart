import 'package:flutter/material.dart';
import './button.dart';
import '../../../assets/constants.dart' as constants;

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _Buttons();
}

class _Buttons extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    Widget customRowOne = _buildCustomButtonRow(
        'assets/images/lowWhite.png',
        'assets/images/lowRed.png',
        'assets/images/spottingWhite.png',
        'assets/images/spottingRed.png',
        'assets/images/normalWhite.png',
        'assets/images/normalRed.png',
        'assets/images/highWhite.png',
        'assets/images/highRed.png',
        "Bleeding");
    Widget customRowTwo = _buildCustomButtonRow(
        'assets/images/exhaustedWhite.png',
        'assets/images/exhaustedRed.png',
        'assets/images/tiredWhite.png',
        'assets/images/tiredRed.png',
        'assets/images/normalEnergyWhite.png',
        'assets/images/normalEnergyRed.png',
        'assets/images/energizedWhite.png',
        'assets/images/energizedRed.png',
        "Energy");
    Widget customRowThree = _buildCustomButtonRow(
        'assets/images/pmsWhite.png',
        'assets/images/pmsRed.png',
        'assets/images/sensitiveWhite.png',
        'assets/images/sensitiveRed.png',
        'assets/images/sadWhite.png',
        'assets/images/sadRed.png',
        'assets/images/happyWhite.png',
        'assets/images/happyRed.png',
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
          color: constants.WHITE,
        ),
        child: Column(children: [
          const SizedBox(height: 5),
          Material(
              child: Text(header,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: constants.BLACK,
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
          const Divider(thickness: 2, color: constants.BLACK),
        ]));
  }
}
