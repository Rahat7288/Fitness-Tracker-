// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theme_change_cubit.dart';

abstract class ThemeChangeState extends Equatable {
  const ThemeChangeState();
}

class ThemeChangeInitiat extends ThemeChangeState {
  @override
  List<Object?> get props => [];
}

class ThemeChange extends ThemeChangeState {
  bool buttonBool;
  ThemeChange({
    required this.buttonBool,
  });
  @override
  List<Object?> get props => [buttonBool];
}
