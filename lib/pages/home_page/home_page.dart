import 'package:elo_task/constants/custom_colors.dart';
import 'package:elo_task/widgets/custom_button1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.stateGray,
      appBar: AppBar(
        title: Text('WalkMate'),
      ),
      body: Center(child: CustomButton1(context, 'Get Started')),
    );
  }
}
