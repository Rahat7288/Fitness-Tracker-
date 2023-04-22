// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'set_target_state.dart';

class SetTargetCubit extends Cubit<SetTargetState> {
  double target = 0;
  SetTargetCubit() : super(SetTargetInitial());

  setTarget(double targetValue) {
    target = targetValue;
    emit(TargetChange(target: target));
  }
}
