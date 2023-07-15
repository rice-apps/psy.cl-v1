import 'package:flutter/material.dart';

//Third child-page of sliding_background

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'What are you looking for today?',
                  style: TextStyle(
                    fontFamily: "Metropolis",
                    fontSize: 25,
                    color: Colors.grey.shade800),
                  textAlign: TextAlign.center,
                ),
          ),
          Text(
            'Choose up to six focus areas.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
          height: 298, // Adjust the height as needed
          child: GridView.count(
              padding: EdgeInsets.only(top: 20, left: 90, right: 90),

              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              crossAxisCount: 3,
              children: [
                /*
                buildCircleButton('🍎', 'Diet'),
                buildCircleButton('💼', 'Work'),
                buildCircleButton('💪', 'Fitness'),
                buildCircleButton('🌟', 'Output'),
                buildCircleButton('😊', 'Mood'),
                buildCircleButton('⚡', 'Energy'),
                */
              ],
            
          ),
        ),
      ],
    );
    
    
  }


//build circle button 
Widget buildCircleButton(String emoji, String buttonText) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          // Handle button tap
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              emoji,
              style: TextStyle(
                fontSize: 30, //default font is black and white
              ),
            ),
          ),
        ),
      ),
    //]
  SizedBox(height: 8), // Add spacing between the button and text
  Text(
    buttonText,
    style: TextStyle(
      fontSize: 10,
      color: Colors.grey.shade800,
    ),
  ),
  ],    
  );
}
}

/*
buildCircleButton('🍎'),
                buildCircleButton('💼'),
                buildCircleButton('💪'),
                buildCircleButton('🌟'),
                buildCircleButton('😊'),
                buildCircleButton('⚡'),
                */