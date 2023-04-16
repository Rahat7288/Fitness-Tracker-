import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/custom_colors.dart';
import '../../../cubits/theme_change/theme_change_cubit.dart';
import '../../../widgets/theme_button1.dart';

class FirstLandingTab extends StatelessWidget {
  const FirstLandingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: (state is ThemeChange)
                ? CustomColors.greenAppbar
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
        );
      },
    );
  }
}
