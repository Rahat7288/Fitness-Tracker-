import 'package:elo_task/constants/custom_colors.dart';
import 'package:flutter/material.dart';

Widget CustomButton1(BuildContext context, String buttonName, Function press) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(48.0),
    child: GestureDetector(
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
      onTap: () => press,
    ),
  );
}
