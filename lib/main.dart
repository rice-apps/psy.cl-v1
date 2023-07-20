
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'src/features/landing-page/panel.dart';
import 'src/features/landing-page/background.dart';
import 'src/features/landing-page/sliding_background.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import './assets/constants.dart' as constants;
void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Psy.cl',
//       home: const MyHomePage(title: 'Psy.cl Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SlidingUpPanelExample"),
//       ),
//       body: SlidingUpPanel(),
//     );
//   }

//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final panelHeightOpen =
//         MediaQuery.of(context).size.height * constants.maxPanelHeight;
//     final panelHeightClosed =
//         MediaQuery.of(context).size.height * constants.minPanelHeight;

//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.

//     return Scaffold(
//       body: SlidingUpPanel(
//         maxHeight: panelHeightOpen,
//         minHeight: panelHeightClosed,
//         parallaxEnabled: true,
//         parallaxOffset: 1,
//         body: Stack(children: [BackgroundColorPage(), PagedBackground()]),
//         panelBuilder: (controller) => PanelWidget(
//           controller: controller,
//         ),
//         borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
//         boxShadow: const [
//           BoxShadow(blurRadius: 8.0, color: constants.darkGray)
//         ],
//       ),
//     );   
//   }
// }
class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 7),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 7),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slidable Example',
      home: Scaffold(
        body: ListView(
          children: [

            Slidable(
              // Specify a key if the Slidable is dismissible.
              key: const ValueKey(0),

              // The start action pane is the one at the left or the top side.
              startActionPane: ActionPane(
                extentRatio:0.3,
                // A motion is a widget used to control how the pane animates.
                motion: BehindMotion(),

                // A pane can dismiss the Slidable.
                dismissible: DismissiblePane(onDismissed: () {}),

                // All actions are defined in the children parameter.
                children: [
                  // A SlidableAction can have an icon and/or a label.
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFE19797),
                    foregroundColor: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)), 
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
                    backgroundColor: Color(0xFF82C2AB),
                    foregroundColor: Colors.white,
                    icon: Icons.check,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                    label: 'Save',
                    ),
                ],
              ),

              // The child of the Slidable is what the user sees when the
              // component is not dragged.
              child: const CardExample(),
              
            ),
          ],
        ),
      ),
    );
  }
}


 
void doNothing(BuildContext context) {}
