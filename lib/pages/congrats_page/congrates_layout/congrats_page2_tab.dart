import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/custom_colors.dart';
import '../../../cubits/theme_change/theme_change_cubit.dart';
import '../../../widgets/custom_button1.dart';
import '../../../widgets/theme_button1.dart';
import '../../home_page/home_page.dart';

class CongratsPage2Tab extends StatelessWidget {
  const CongratsPage2Tab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: (state is ThemeChange)
              ? CustomColors.darkBackground
              : CustomColors.darkGray,
          appBar: AppBar(
            backgroundColor: (state is ThemeChange)
                ? CustomColors.darkBackground
                : CustomColors.darkGray,
            elevation: 0,
            toolbarHeight: 80.0,
            leadingWidth: 114.0,
            bottomOpacity: 0,
            toolbarOpacity: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Image.asset(
                'assets/images/Logo1.png',
                height: 16,
                width: 114,
              ),
            ),
            actions: [ThemeButton1()],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/Congrats.png'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      const Text(
                        'Applause to Your effort, Try Harder Next Time. ',
                        style: TextStyle(
                          color: CustomColors.greenAppbar,
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Your determination and effort is inspiring. Keep pushing yourself to reach new heights',
                        style: TextStyle(
                          color: CustomColors.darkBackground,
                          fontSize: 28,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomButton1(
                        buttonName: 'Home',
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
