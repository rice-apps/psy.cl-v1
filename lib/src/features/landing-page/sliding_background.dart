import 'package:flutter/material.dart';
import 'background.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../assets/constants.dart' as constants;

class PagedBackground extends StatelessWidget {
  const PagedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    const pageViewChildren = <Widget>[
      Center(
        child: Text('Progress circle page'),
      ),
      Center(
        child: Text('Calendar page'),
      ),
      Center(
        child: Text('Graphs Page'),
      ),
    ];

    final pageView = PageView(
      controller: controller,
      children: pageViewChildren,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: pageView,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: pageViewChildren.length,
          axisDirection: Axis.horizontal,
          effect: const ScaleEffect(
            activeDotColor: constants.DARKGRAY,
            dotHeight: 10,
            dotColor: constants.GRAY,
            dotWidth: 10,
          ),
        ),
        SizedBox(
          height:
              MediaQuery.of(context).size.height * constants.MIN_PANEL_HEIGHT +
                  10,
        )
      ],
    );
  }
}
