import 'package:elo_task/pages/history_page/history_page.dart';
import 'package:elo_task/widgets/custom_button1.dart';
import 'package:elo_task/widgets/custom_button2.dart';
import 'package:elo_task/widgets/theme_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/custom_colors.dart';
import '../../../cubits/theme_change/theme_change_cubit.dart';

class FirstLandingMobile extends StatelessWidget {
  const FirstLandingMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double intValue = 0;
    return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: CustomColors.greenAppbar,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )),
                child: Stack(
                  children: [
                    Positioned(
                      right: -10,
                      child: backgroundImage(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 50.0),
                      child: appHeader(),
                    ),
                    Positioned(
                      bottom: 50,
                      child: textContent(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'ADD YOUR TARGET',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SliderTheme(
                  data: SliderTheme.of(context).copyWith(),
                  child: Slider(
                    // min: 0.0,
                    // max: 10000.0,
                    onChanged: (double value) {},
                    value: intValue,
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '0m',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '10000m',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              CustomButton1(
                press: () {},
                buttonName: 'Set Limit',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton2(
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HistoryPage())),
                buttonName: 'History',
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget backgroundImage() {
  return Image.asset(
    'assets/images/Pattern.png',
    fit: BoxFit.cover,
    height: 300,
    color: Colors.white,
  );
}

Widget appHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset(
        'assets/images/Logo1.png',
        color: Colors.white,
        height: 16,
        // width: 327,
      ),
      ThemeButton2(),
    ],
  );
}

Widget textContent(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Set Your Walking Goal Now!',
            // textAlign: TextAlign.justify,
            maxLines: 2,
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Your determination and effort is inspiring Keep pushing yourelf to reach new heights.',
            maxLines: 3,
            textWidthBasis: TextWidthBasis.longestLine,
            style: TextStyle(
              height: 1.5,
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ),
  );
}
