import 'package:flutter/material.dart';
import '../../../assets/constants.dart' as constants;

class BackgroundColorPage extends StatelessWidget {
  const BackgroundColorPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: constants.WHITE,
        //backgroundColor: constants.WHITE,
        body: Container(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [
              //     constants.PERIOD,
              //     constants.OVULATION,
              //   ],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              ),
        ),
      );
}
