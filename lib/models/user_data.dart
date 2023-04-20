// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class UserData extends Equatable {
  final String id;
  double? target;
  double? checkPoint;
  UserData({
    String? id,
    this.target,
    this.checkPoint,
  }) : id = id ?? uuid.v4();

  @override
  List<Object> get props => [id, target!, checkPoint!];

  @override
  bool get stringify => true;
}
