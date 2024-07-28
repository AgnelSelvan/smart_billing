part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class HandleLoginEvent extends LoginEvent {
  final String email;
  final String password;

  const HandleLoginEvent({required this.email, required this.password});
}
