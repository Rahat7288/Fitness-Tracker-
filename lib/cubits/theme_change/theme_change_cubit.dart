// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_change_state.dart';

class ThemeChangeCubit extends Cubit<ThemeChangeState> {
  bool buttonBool = false;
  ThemeChangeCubit() : super(ThemeChangeInitiat());

  void changeTheme() {
    buttonBool = !buttonBool;
    emit(ThemeChange(buttonBool: buttonBool));
  }
}
