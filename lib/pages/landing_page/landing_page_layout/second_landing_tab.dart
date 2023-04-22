import 'package:elo_task/widgets/vertical_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/custom_colors.dart';
import '../../../cubits/theme_change/theme_change_cubit.dart';
import '../../../widgets/custom_button1.dart';
import '../../../widgets/custom_button2.dart';
import '../../../widgets/theme_button2.dart';
import '../../history_page/history_page.dart';

class SecondLandingTab extends StatefulWidget {
  const SecondLandingTab({super.key});

  @override
  State<SecondLandingTab> createState() => _SecondLandingTabState();
}

class _SecondLandingTabState extends State<SecondLandingTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
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
                        child: headerContent(context, "9000m", '4500m'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'CHECKPOINTS',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                // const SizedBox(
                //   height: 10,
                // ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: CustomColors.gray,
                  ),
                ),

                // Checkpoints Part

                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return checkPoits(context);
                    },
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                CustomButton1(
                  press: () {},
                  buttonName: 'Add Checkpoints',
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

Widget headerContent(BuildContext context, String target, String completed) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    width: MediaQuery.of(context).size.width,
    // height: MediaQuery.of(context).size.height,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const VerticaSlider(),
        // Container(
        //   height: 200,
        //   width: 80,
        //   // color: Colors.red,
        //   decoration: BoxDecoration(
        //       border: Border.all(
        //         color: Colors.white,
        //         width: 2.0,
        //       ),
        //       borderRadius: BorderRadius.circular(15)),
        // ),
        const SizedBox(
          width: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Completed',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: CustomColors.darkGray,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              completed,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: CustomColors.darkGray,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Target',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: CustomColors.darkGray,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              target,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: CustomColors.stateGray,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget checkPoits(
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Checkpoint.png',
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Checkpoint 1',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Text(
            '1000m',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ),
  );
}
