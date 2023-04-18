import 'package:elo_task/constants/resposive.dart';
import 'package:elo_task/pages/congrats_page/congrates_layout/congrates_page2-mobile.dart';
import 'package:elo_task/pages/congrats_page/congrates_layout/congrats_page2_tab.dart';
import 'package:flutter/material.dart';

class CongratsPage2 extends StatelessWidget {
  const CongratsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: const CongratsPage2Mobile(),
      tabletBody: const CongratsPage2Tab(),
    );
  }
}
