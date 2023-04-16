import 'package:elo_task/constants/resposive.dart';
import 'package:elo_task/pages/landing_page/landing_page_layout/first_landing_mobile.dart';
import 'package:elo_task/pages/landing_page/landing_page_layout/first_landing_tab.dart';
import 'package:flutter/material.dart';

class FirstLandinPage extends StatelessWidget {
  const FirstLandinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: const FirstLandingMobile(),
      tabletBody: const FirstLandingTab(),
    );
  }
}
