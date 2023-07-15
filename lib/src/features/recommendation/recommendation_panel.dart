import 'package:flutter/material.dart';
import '../../../assets/constants.dart' as constants;
//import file that contains class of recommendation cards

class RecommendationPanel extends StatefulWidget {
  const RecommendationPanel({super.key});

  @override
  State<RecommendationPanel> createState() => _RecommendationPanelState();
}

class _RecommendationPanelState extends State<RecommendationPanel> {

  //Placeholder cards...should be replaced with list of functional recommendation cards
  final List<Container> _recommendationCards = [
    Container(height: 100, color: Colors.pink),
    Container(height: 100, color: Colors.orange),
    Container(height: 100, color: Colors.pink),
    Container(height: 100, color: Colors.blue),
    Container(height: 100, color: Colors.green),
    Container(height: 100, color: Colors.blue),
    Container(height: 100, color: Colors.green),
    Container(height: 100, color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
          child: Text(
            'Recommendations',
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 40,
                  color: Colors.grey.shade800),
                  textAlign: TextAlign.center,
                ),
          ),
        Text(
          'Swipe to complete or dismiss.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade600),
          textAlign: TextAlign.center,
        ),
        topThreeRecommendations(),
        const Divider(thickness: 2, color: constants.darkGray),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: 
          Text(
            'Some more...',
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 40,
                  color: Colors.grey.shade800),
                  textAlign: TextAlign.center,
                ),
          ),
        moreRecommendations(),
      ]
    );

    Widget topThreeRecommendations() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: _recommendationCards.length >= 3 ? 3 : _recommendationCards.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(20),
            child: _recommendationCards[index]
          ) ;
        }));
    
    Widget moreRecommendations() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: _recommendationCards.length > 3 ? _recommendationCards.length - 3 : 0,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(20),
              child: _recommendationCards[index + 3]
            ) ;
        }));

}

