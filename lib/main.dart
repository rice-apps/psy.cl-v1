import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Map<String, String> invertImage = {};

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget customRowOne = _buildCustomButtonRow(
        'assets/images/low.png',
        'assets/images/spotting.png',
        'assets/images/normal.png',
        'assets/images/normal.png',
        "Bleeding");
    Widget customRowTwo = _buildCustomButtonRow(
        'assets/images/exhausted.png',
        'assets/images/tired.png',
        'assets/images/normalEnergy.png',
        'assets/images/normal.png',
        "Energy");
    Widget customRowThree = _buildCustomButtonRow(
        'assets/images/sensitive.png',
        'assets/images/sad.png',
        'assets/images/happy.png',
        'assets/images/normal.png',
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

  Widget buildButton(String imageSrc) {
    return Material(
        color: Colors.blue,
        elevation: 8,
        //borderRadius: BorderRadius.circular(28),
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                  color: Color.fromARGB(255, 236, 139, 132), width: 3),
              //borderRadius: BorderRadius.circular(10)
            ),
            child: InkWell(
                onTap: () => {
                      setState(() {
                        invertImage['pressed'] = 'assets/images/sensitive.png';
                      })
                    },
                child: Ink.image(
                  image: AssetImage(imageSrc),
                  height: 83,
                  width: 83,
                  fit: BoxFit.cover,
                ))));
  }

  Container _buildCustomButtonRow(String imageSrc1, String imageSrc2,
      String imageSrc3, String imageSrc4, String header) {
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
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildButton(imageSrc1),
                      buildButton(imageSrc2),
                      buildButton(imageSrc3),
                      buildButton(imageSrc4)
                    ],
                  )))
        ]));
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

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
