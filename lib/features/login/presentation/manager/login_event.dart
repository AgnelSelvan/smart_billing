part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class AddLoginEvent extends LoginEvent {
  final AddLoginParams params;

  const AddLoginEvent({required this.params});
}

class UpdateLoginEvent extends LoginEvent {
  final UpdateLoginParams params;

  const UpdateLoginEvent({required this.params});
}

class DeleteLoginEvent extends LoginEvent {
  final String id;
  const DeleteLoginEvent({required this.id});
}

class GetAllLoginsEvent extends LoginEvent {}

class GetALoginEvent extends LoginEvent {
  final String id;
  const GetALoginEvent({required this.id});
}
