import 'package:white/models/user.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  List<User> posts;

  UserLoaded(this.posts);
}

class UserError extends UserState {
  final String message;

  UserError(this.message);
}