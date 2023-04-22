import 'package:elo_task/constants/button_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/theme_change/theme_change_cubit.dart';

Widget themeButton1() {
  return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
    builder: (context, state) {
      return GestureDetector(
        onTap: () {
          context.read<ThemeChangeCubit>().changeTheme();
        },
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
          child: Image.asset(ButtonIcon.button2),
        ),
      );
    },
  );
}
