import 'package:equatable/equatable.dart';

abstract class UserEvent  extends Equatable{}

class FetchEvents extends UserEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}