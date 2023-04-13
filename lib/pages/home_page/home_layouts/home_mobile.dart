import 'package:flutter/material.dart';

import '../../../widgets/custom_button1.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WalkMate'),
      ),
      body: Center(child: CustomButton1(context, 'Get Started')),
    );
  }
}
