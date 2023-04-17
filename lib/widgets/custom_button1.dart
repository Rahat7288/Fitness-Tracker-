import 'package:elo_task/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  final Function() press;
  final String buttonName;
  const CustomButton1(
      {super.key, required this.press, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: press,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(48.0),
        child: Container(
          height: 56.0,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration: const BoxDecoration(
            color: CustomColors.greenAppbar,
          ),
          child: Center(
            child: Text(
              buttonName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Manrope',
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
