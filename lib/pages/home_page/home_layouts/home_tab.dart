import 'package:elo_task/widgets/custom_button1.dart';
import 'package:flutter/material.dart';

class HomeTabe extends StatelessWidget {
  const HomeTabe({super.key});

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
