import 'package:elo_task/constants/custom_colors.dart';
import 'package:elo_task/widgets/custom_button2.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_button1.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
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
          // padding: const EdgeInsets.symmetric(horizontal: 20.0),
          color: CustomColors.darkGray,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Set your walking goal today!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 56,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              SizedBox(child: backgroungImage(context)),
            ],
          ),
        ));
  }
}

Widget backgroungImage(BuildContext context) {
  return Stack(
    alignment: Alignment.bottomCenter,
    fit: StackFit.loose,
    children: [
      Image.asset(
        'assets/images/Image.png',
        // height: 700,
        fit: BoxFit.cover,
      ),
      Positioned(
        bottom: 40.0,
        child: CustomButton1(context, 'Get Started'),
      )
    ],
  );
}
