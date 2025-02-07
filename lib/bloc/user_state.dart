part of 'user_bloc.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserLoaded extends UserState {
  // untuk menampung list dari model user
  final List<dynamic> user;

  UserLoaded(this.user);
}

final class UserError extends UserState {
  final String error;
  UserError(this.error);
}