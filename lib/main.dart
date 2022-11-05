import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonColumnOne =
        _buildButtonRow(Colors.red, Icons.call, "Spotting", "Low", "Normal");
    Widget buttonColumnTwo =
        _buildButtonRow(Colors.blue, Icons.call, "Spotting", "Not", "Normal");
    Widget buttonColumnThree =
        _buildButtonRow(color, Icons.call, "Spotting", "Nott", "Normal");
    Widget buttonColumnFour =
        _buildButtonRow(color, Icons.call, "Spotting", "ntt", "Normal");
    Widget customButton = Ink.image(
      image: const AssetImage('src/spotting.png'),
      height: 10,
      width: 10,
    );
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          body: Column(
        children: [customButton],
      )),
    );
  }

  Row _buildButtonRow(Color color, IconData icon, String labelOne,
      String labelTwo, String labelThree) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
        height: 75,
        width: 75,
        child: ElevatedButton.icon(
            icon: Icon(icon, size: 24.0),
            label: Text(labelOne),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              backgroundColor: color,
            )),
      ),
      SizedBox(
        height: 75,
        width: 75,
        child: ElevatedButton.icon(
            icon: Icon(Icons.bloodtype),
            label: Text(labelTwo),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              backgroundColor: Colors.red,
            )),
      ),
      SizedBox(
        height: 75,
        width: 75,
        child: ElevatedButton.icon(
            icon: Icon(Icons.bloodtype),
            label: Text(labelThree),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              backgroundColor: Colors.red,
            )),
      )
    ]);
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(icon, color: color),
        Row(
            //margin: const EdgeInsets.only(top: 8),
            children: <Widget>[
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
              ElevatedButton(
                  child: const Icon(Icons.train),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ))
            ]),
      ],
    );
  }
}
