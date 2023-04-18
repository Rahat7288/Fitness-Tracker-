import 'package:elo_task/constants/resposive.dart';
import 'package:elo_task/pages/congrats_page/congrates_layout/congrates_page1_tab.dart';
import 'package:elo_task/pages/congrats_page/congrates_layout/congrats_page1_mobile.dart';
import 'package:flutter/material.dart';

class CongratesPage1 extends StatelessWidget {
  const CongratesPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: const CongratsPage1Mobile(),
        tabletBody: const CongratesPage1Tab());
  }
}
