import 'package:flutter/material.dart';
import '../../../assets/constants.dart' as constants;
import '../recom_approval.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class RecommendationPanel extends StatefulWidget {
  const RecommendationPanel({super.key});

  @override
  State<RecommendationPanel> createState() => _RecommendationPanelState();
}

class _RecommendationPanelState extends State<RecommendationPanel> {

  //Placeholder cards...should be replaced with list of functional recommendation cards

  final List<Container> _recommendationCards = [
    Container(child:Recommendation1()),
    Container(child:Recommendation2()),
    Container(child:Recommendation3()),
    Container(child:Recommendation1()),
    Container(child:Recommendation2()),
    Container(child:Recommendation3()),

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

    Widget topThreeRecommendations() => ListView.builder(
        shrinkWrap: true,
        itemCount: _recommendationCards.length >= 3 ? 3 : _recommendationCards.length,
        itemBuilder: (context, index){
          return 
            Align(
              alignment: Alignment.center,
              child:
              Padding(
                padding: const EdgeInsets.all(20),
                child: 
                Row(
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    Container(
                      width:320, 
                      child:
                      Slidable(
                        key: UniqueKey(),
                        startActionPane: ActionPane(
                          extentRatio:0.2,
                          motion: BehindMotion(),
                          dismissible: DismissiblePane(onDismissed: () {}),
                          children: [
                            SlidableAction(
                              onPressed: doNothing,
                              backgroundColor: Color(0xFFE19797),
                              foregroundColor: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),), 
                              icon: Icons.clear_rounded,
                              label: 'Delete',),],),

                        endActionPane: ActionPane(
                          extentRatio: 0.3,
                          motion: BehindMotion(),
                          children: [
                            SlidableAction(
                              onPressed: doNothing,
                              padding: EdgeInsets.only(left: 0),
                              backgroundColor: Color(0xFF82C2AB),
                              foregroundColor: Colors.white,
                              icon: Icons.check,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),),
                              label: 'Save',),],),
                        child: Container(height: 100, child: _recommendationCards[index]),
                        ))])));
        });

    
    Widget moreRecommendations() => ListView.builder(
          shrinkWrap: true,
          itemCount: _recommendationCards.length > 3 ? _recommendationCards.length - 3 : 0,
          itemBuilder: (context, index){
            return 
            Align(
              alignment: Alignment.center,
              child:
              Padding(
                padding: const EdgeInsets.all(20),
                child: 
                Row(
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    Container(
                      width:320, 
                      child:
                      Slidable(
                        key: UniqueKey(),
                        startActionPane: ActionPane(
                          extentRatio:0.2,
                          motion: BehindMotion(),
                          dismissible: DismissiblePane(onDismissed: () {}),
                          children: [
                            SlidableAction(
                              onPressed: doNothing,
                              backgroundColor: Color(0xFFE19797),
                              foregroundColor: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),), 
                              icon: Icons.clear_rounded,
                              label: 'Delete',),],),

                        endActionPane: ActionPane(
                          extentRatio: 0.3,
                          motion: BehindMotion(),
                          children: [
                            SlidableAction(
                              onPressed: doNothing,
                              padding: EdgeInsets.only(left: 0),
                              backgroundColor: Color(0xFF82C2AB),
                              foregroundColor: Colors.white,
                              icon: Icons.check,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),),
                              label: 'Save',),],),
                        child: Container(height: 100, child: _recommendationCards[index+3]),
                        ))])));
        });

}



