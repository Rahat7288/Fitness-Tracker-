import 'package:elo_task/constants/custom_colors.dart';
import 'package:elo_task/constants/resposive.dart';
import 'package:elo_task/pages/home_page/home_layouts/home_mobile.dart';
import 'package:elo_task/pages/home_page/home_layouts/home_tab.dart';
import 'package:elo_task/widgets/custom_button1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.stateGray,
        body: ResponsiveLayout(
          mobileBody: HomeMobile(),
          tabletBody: HomeTabe(),
        ));
  }
}
