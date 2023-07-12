import 'package:flutter/material.dart';

//Third child-page of sliding_background

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What are you looking for today?',
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 30,
                  color: Colors.grey.shade800),
                textAlign: TextAlign.center,
              ),
          Text(
            'Choose up to six focus areas.',
            style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade400),
            textAlign: TextAlign.center,
          ),
          //TODO:Filter Buttons (2 x 3 grid)
        ]);

    
    
  }
}