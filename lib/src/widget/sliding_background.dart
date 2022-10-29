import 'package:flutter/material.dart';
import './background.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../assets/constants.dart' as Constants;

class PagedBackground extends StatelessWidget {
  const PagedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    const pageViewChildren = <Widget>[
      Center(
        child: Text('First Page'),
      ),
      Center(
        child: Text('Second Page'),
      ),
      Center(
        child: Text('Third Page'),
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
          effect: const SlideEffect(
            activeDotColor: Colors.white54,
            dotHeight: 10,
            dotColor: Colors.blue,
            dotWidth: 10,
          ),
        ),
        SizedBox(
          height:
              MediaQuery.of(context).size.height * Constants.MIN_PANEL_HEIGHT +
                  10,
        )
      ],
    );
  }
}
