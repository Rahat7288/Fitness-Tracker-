import 'package:elo_task/constants/resposive.dart';
import 'package:elo_task/pages/landing_page/landing_page_layout/second_landing_mobile.dart';
import 'package:elo_task/pages/landing_page/landing_page_layout/second_landing_tab.dart';
import 'package:flutter/material.dart';

class SecondLandingPage extends StatelessWidget {
  const SecondLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: const SecondLandingMobile(),
      tabletBody: const SecondLandingTab(),
    );
  }
}
