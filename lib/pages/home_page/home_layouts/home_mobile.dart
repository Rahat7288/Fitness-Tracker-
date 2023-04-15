import 'package:elo_task/widgets/custom_button2.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_button1.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        // leading: Container(
        //   child: Image.asset('assets/images/Logo1.png'),
        // ),
      ),
      body: Center(child: CustomButton2(context, 'Get Started')),
    );
  }
}
