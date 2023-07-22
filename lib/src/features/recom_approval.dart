
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import './assets/constants.dart' as constants;

void main() => runApp(const CardExamplesApp());


class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 231, 231, 231), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Examples')),
        body: Column(
          children: <Widget>[
            Spacer(),
            Container(
              width:300,
              margin: const EdgeInsets.all(10.0),
              child:
            Slidable(
              // Specify a key if the Slidable is dismissible.
              key: const ValueKey(0),

              // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                extentRatio:0.2,
                // A motion is a widget used to control how the pane animates.
                motion: BehindMotion(),

                // A pane can dismiss the Slidable.
                dismissible: DismissiblePane(onDismissed: () {}),

                // All actions are defined in the children parameter.
                children: [
                  // A SlidableAction can have an icon and/or a label.
                  SlidableAction(
                    onPressed: doNothing,
                    padding: EdgeInsets.only(left: 10),
                    backgroundColor: Color(0xFFE19797),
                    foregroundColor: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),), 
                    icon: Icons.clear_rounded,
                    label: 'Delete',
                  ),
                ],
              ),

              // The end action pane is the one at the right or the bottom side.
              endActionPane: ActionPane(
                extentRatio: 0.3,
                motion: BehindMotion(),
                children: [
                  SlidableAction(
                    onPressed: doNothing,
                    padding: EdgeInsets.only(left: 10),
                    backgroundColor: Color(0xFF82C2AB),
                    foregroundColor: Colors.white,
                    icon: Icons.check,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),),
                    label: 'Save',
                    ),
                ],
              ),

              // The child of the Slidable is what the user sees when the
              // component is not dragged.
              child: Container(child:Recommendation1()),
              
            ),),
      Recommendation2(),
      Spacer(),
        ],
        ),
      ),
    );
  }
}
class Recommendation1 extends StatelessWidget {
  const Recommendation1({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Card(
          margin: EdgeInsets.only(right: 0.0, left:0.0),
          elevation: 5,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: Column(
            children: <Widget>[
             ListTile(
                leading: Image.asset('assets/images/apple.png'),
                title: const Text("Recommendation 1", style: TextStyle(fontFamily: 'Poppins', fontSize: 20.0, color: Colors.black),),
                subtitle: const Text("list recommendation here", style: TextStyle(fontFamily: 'Poppins', fontSize: 10.0, color: Colors.black)),  
              ),
              const Padding(
                padding: EdgeInsets.all(8.0)
                ),
            ],
          ),
        ),
      )
    );
  }
}
class Recommendation2 extends StatelessWidget {
  const Recommendation2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Card(
          elevation: 5,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/apple.png'),
                title: const Text("Recommendation 2", style: TextStyle(fontFamily: 'Poppins', fontSize: 20.0, color: Colors.black),),
                subtitle: const Text("list recommendation here", style: TextStyle(fontFamily: 'Poppins', fontSize: 10.0, color: Colors.black)),  
              ),
              const Padding(padding: EdgeInsets.all(8.0))
            ],
          ),
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}


