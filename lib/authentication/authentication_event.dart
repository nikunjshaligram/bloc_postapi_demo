part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {
  final LoginModel loginModel;
  const LoggedIn(this.loginModel);

  @override
  List<Object> get props => [loginModel];

  @override
  String toString() => 'LoggedIn { user: $loginModel.username.toString() }';
}

class LoggedOut extends AuthenticationEvent {}
