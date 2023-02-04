import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button(
      {super.key,
      this.normalImg = 'assets/images/spotting.png',
      this.invertedImg = 'assets/images/invertSad.png'});
  final String normalImg;
  final String invertedImg;

  @override
  State<Button> createState() => _Button();
}

class _Button extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return buildButton(widget.normalImg, widget.invertedImg);
  }

  bool _isPressed = false;
  Widget buildButton(String imageSrc, String invertedImageSrc) {
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
                  color: const Color.fromARGB(255, 236, 139, 132), width: 3),
            ),
            child: InkWell(
                onTap: () => {
                      setState(() {
                        if (_isPressed) {
                          _isPressed = false;
                        } else {
                          _isPressed = true;
                        }
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
}
