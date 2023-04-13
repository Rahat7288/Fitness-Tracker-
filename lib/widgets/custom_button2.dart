import 'package:elo_task/constants/custom_colors.dart';
import 'package:flutter/material.dart';

Widget CustomButton2(BuildContext context, String name) {
  return Container(
    height: 56.0,
    width: MediaQuery.of(context).size.width / 1.1,
    decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          style: BorderStyle.solid,
          color: CustomColors.greenAppbar,
        ),
        borderRadius: BorderRadius.circular(48.0)),
    child: Center(
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: CustomColors.greenAppbar,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Manrope',
        ),
      ),
    ),
  );
}
