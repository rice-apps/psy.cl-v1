import 'package:flutter/material.dart';

class BackgroundColorPage extends StatelessWidget {
  const BackgroundColorPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            //title:Text(MyApp.title),
            //centerTitle: true,
            ),
      );
}
