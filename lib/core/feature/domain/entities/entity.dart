import 'package:equatable/equatable.dart';

abstract class Entity extends Equatable {}

class EmptyEntity extends Entity {
  @override
  List<Object?> get props => [];

  EmptyEntity();
}
