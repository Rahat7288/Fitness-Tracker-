import 'package:elo_task/cubits/theme_change/theme_change_cubit.dart';
import 'package:elo_task/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeChangeCubit())],
      child: BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'WalkMate',
            theme: (state is ThemeChange) ? _darkTheme : _lightTheme,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
