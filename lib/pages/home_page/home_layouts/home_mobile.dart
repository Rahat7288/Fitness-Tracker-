import 'package:elo_task/constants/custom_colors.dart';
import 'package:elo_task/pages/landing_page/first_landing_page.dart';

import 'package:elo_task/widgets/theme_button1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/theme_change/theme_change_cubit.dart';
import '../../../widgets/custom_button1.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    // bool _iconBool = false;
    return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
      builder: (context, state) {
        return Scaffold(
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
              actions: [themeButton1()],
            ),
            body: Container(
              // padding: const EdgeInsets.symmetric(horizontal: 20.0),
              color: (state is ThemeChange)
                  ? CustomColors.darkBackground
                  : CustomColors.darkGray,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Set your walking goal today!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: (state is ThemeChange)
                            ? Colors.white
                            : Colors.black,
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 56,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(child: backgroungImage(context)),
                ],
              ),
            ));
      },
    );
  }
}

Widget backgroungImage(BuildContext context) {
  // press() {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const FirstLandinPage(),
  //       ));
  // }

  return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
    builder: (context, state) {
      return Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: [
          Image.asset(
            (state is ThemeChange)
                ? 'assets/images/Dark_Image.png'
                : 'assets/images/Image.png',
            // height: 700,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 40.0,
            child: CustomButton1(
              buttonName: 'Get Started',
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstLandinPage(),
                  )),
            ),
          )
        ],
      );
    },
  );
}
