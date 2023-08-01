import 'package:flutter/material.dart';
import '../filter_buttons.dart';


//Third child-page of sliding_background
class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 5),
          child: Text(
            'What are you looking for today?',
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 40,
                  color: Colors.grey.shade800),
                  textAlign: TextAlign.center,
                ),
          ),
        Text(
          'Choose up to six focus areas.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade600),
          textAlign: TextAlign.center,
        ),
        Expanded(child: FilterButton()),  
      ],
    );
    
    
  }
}