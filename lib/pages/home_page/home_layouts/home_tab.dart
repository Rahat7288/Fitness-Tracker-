import 'package:elo_task/widgets/custom_button1.dart';
import 'package:flutter/material.dart';

import '../../../constants/custom_colors.dart';
import '../../landing_page/first_landing_page.dart';

class HomeTabe extends StatelessWidget {
  const HomeTabe({super.key});

  @override
  Widget build(BuildContext context) {
    // press() {
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => const FirstLandinPage(),
    //       ));
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.stateGray,
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
      ),
      body: Container(
        color: CustomColors.darkGray,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300,
              child: Image.asset(
                'assets/images/Image.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 600,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  const Text(
                    "Set your walking goal today!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 56,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton1(
                    buttonName: 'Get Started',
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FirstLandinPage(),
                        )),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
