import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
      child: Container(
        child: FilterButton(),
        color: Color.fromARGB(255, 245, 244, 244)
    )
  )
);

class FilterButton extends StatelessWidget {
  bool click =true;
  
  @override
  Widget build(BuildContext context) { 
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button('🍎'),
            Button('💼'),
            Button('💪')
          ]
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Label("Diet"),
            Label("Work"),
            Label("Fitness"),
          ]
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button('🌟'),
            Button('😊'),
            Button('⚡️'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Label("Productivity"),
            Label("Mood"),
            Label("Energy"),
          ]
        ),
      ],
    );
  }
}

class Button extends StatefulWidget {
  final String _emoji;
  Button(this._emoji);
  
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool clicked = false;
  var button_color = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: ElevatedButton(
        onPressed: (){
          setState(() {
            clicked = !clicked;
            if (clicked){
              button_color = Colors.red;
            }
            else {
              button_color = Colors.black12;
            }
            // Something happens with recommendation page widget: 
          });
        },
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          CircleBorder(side:BorderSide(color: button_color)),
        )),
        child: Text(widget._emoji,
        style: TextStyle(fontSize: 40),))
    );
  }
}

class Label extends StatelessWidget {
  final String name;
  Label(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 75,
      width: 80,
      child: Text("$name", style: TextStyle(color: (Colors.black)), textAlign: TextAlign.center)
    );
  }
}