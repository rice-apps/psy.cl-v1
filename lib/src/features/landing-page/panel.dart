import 'package:flutter/material.dart';
import './buttons.dart';
import '../recommendation/recommendation_panel.dart';

bool isAboutText = false;

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: <Widget>[
          const SizedBox(height: 36,),
          isAboutText ? buildAboutText() : const RecommendationPanel(),
          const SizedBox(height: 24),
        ],
      );

  Widget buildAboutText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[Buttons()],
        ),
      );
}




