// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'set_target_cubit.dart';

abstract class SetTargetState extends Equatable {
  const SetTargetState();
}

class SetTargetInitial extends SetTargetState {
  double initil = 0;
  @override
  List<Object> get props => [initil];
}

class TargetChange extends SetTargetState {
  double target;
  TargetChange({
    required this.target,
  });

  @override
  List<Object> get props => [target];
}
