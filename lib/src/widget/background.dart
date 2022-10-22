import 'package:flutter/material.dart';

class BackgroundColorPage extends StatelessWidget {
  const BackgroundColorPage({super.key}); //const?

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.redAccent,
    body: Container(
      decoration: const BoxDecoration( //const?
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.pink,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ),
  );
}