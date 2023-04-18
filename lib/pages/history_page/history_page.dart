import 'package:elo_task/pages/congrats_page/congrats_page1.dart';
import 'package:elo_task/widgets/custom_button1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/custom_colors.dart';
import '../../cubits/theme_change/theme_change_cubit.dart';
import '../../widgets/theme_button1.dart';
import '../congrats_page/congrats_page2.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 80.0,
            backgroundColor: (state is ThemeChange)
                ? CustomColors.darkBackground
                : CustomColors.darkGray,
            iconTheme: const IconThemeData(color: CustomColors.greenAppbar),
            titleSpacing: 0,
            elevation: 0,
            title: const Text(
              'History',
              style: TextStyle(
                  color: CustomColors.greenAppbar,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: ThemeButton1(),
              )
            ],
          ),
          body: Center(
              child: CustomButton1(
            press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CongratsPage2(),
                )),
            buttonName: "Check Page",
          )),
        );
      },
    );
  }
}

class CongratesPage2 {}
