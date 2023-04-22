import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants/custom_colors.dart';
import '../../cubits/theme_change/theme_change_cubit.dart';
import '../../widgets/theme_button1.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: (state is ThemeChange)
                ? CustomColors.darkBackground
                : CustomColors.darkGray,
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
                  child: themeButton1(),
                )
              ],
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LAST 24 HOURS",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }
}

// class CongratesPage2 {}
