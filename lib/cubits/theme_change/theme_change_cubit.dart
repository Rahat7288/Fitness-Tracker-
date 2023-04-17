import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'theme_change_state.dart';

class ThemeChangeCubit extends Cubit<ThemeChangeState> {
  bool buttonBool = false;
  ThemeChangeCubit() : super(ThemeChangeInitiat());

  void changeTheme() {
    // buttonBool = !buttonBool;
    emit(ThemeChange(buttonBool: !buttonBool));
  }
}
