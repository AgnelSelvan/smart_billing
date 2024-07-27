part of 'user_bloc.dart';

class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class AddUserEvent extends UserEvent {
  final AddUserParams params;

  const AddUserEvent({required this.params});
}

class UpdateUserEvent extends UserEvent {
  final UserModel params;

  const UpdateUserEvent({required this.params});
}

class DeleteUserEvent extends UserEvent {
  final String id;
  const DeleteUserEvent({required this.id});
}

class GetAllUsersEvent extends UserEvent {}

class GetAUserEvent extends UserEvent {
  final String id;
  const GetAUserEvent({required this.id});
}

class AddOwnerUserDetails extends UserEvent {
  final AddUserParams params;

  const AddOwnerUserDetails({required this.params});
}
