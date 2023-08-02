
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Recommendation1 extends StatelessWidget {
  const Recommendation1({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Theme(
          data: ThemeData(colorSchemeSeed: const Color.fromRGBO(231, 231, 231, 1), useMaterial3: true),
          child:Card(
          elevation: 5,
          color: Theme.of(context).colorScheme.surfaceVariant,
          margin: const EdgeInsets.only(right: 0.0),
          child: SizedBox(
            width: 320,
            height: 99,          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ListTile(
                  leading: Image.asset('assets/images/apple.png'),
                  title: const Text("Recommendation #1", style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0, color: Color.fromRGBO(75, 80, 89, 1), fontWeight: FontWeight.w700),),
                  subtitle: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0, color: Color.fromRGBO(75, 80, 89, 1), fontWeight: FontWeight.w400)),  
                )
              ],
            ),
          ),
        ),),
      ),
    );
  }
}
class Recommendation2 extends StatelessWidget {
  const Recommendation2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Theme(
          data: ThemeData(colorSchemeSeed: const Color.fromRGBO(231, 231, 231, 1), useMaterial3: true),
          child:Card(
          elevation: 5,
          color: Theme.of(context).colorScheme.surfaceVariant,
          margin: const EdgeInsets.only(right: 0.0),
          child: SizedBox(
            width: 320,
            height: 99,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  leading: Image.asset('assets/images/apple.png'),
                  title: const Text("Recommendation #2", style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0, color: Color.fromRGBO(75, 80, 89, 1), fontWeight: FontWeight.w700),),
                  subtitle: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0, color: Color.fromRGBO(75, 80, 89, 1), fontWeight: FontWeight.w400)),  
                ),
              ],
            ),
          ),
        ),),
      ),
    );
  }
}
class Recommendation3 extends StatelessWidget {
  const Recommendation3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Theme(
          data: ThemeData(colorSchemeSeed: const Color.fromRGBO(231, 231, 231, 1), useMaterial3: true),
          child: Card(
          elevation: 5,
          color: Theme.of(context).colorScheme.surfaceVariant,
          margin: const EdgeInsets.only(right: 0.0),
          child: SizedBox(
            width: 320,
            height: 99,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  leading: Image.asset('assets/images/apple.png'),
                  title: const Text("Recommendation #3", style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0, color: Color.fromRGBO(75, 80, 89, 1), fontWeight: FontWeight.w700),),
                  subtitle: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0, color: Color.fromRGBO(75, 80, 89, 1), fontWeight: FontWeight.w400)),  
                ),
              ],
            ),
          ),
        ),),
      ),
    );
  }
}
void doNothing(BuildContext context) {}


