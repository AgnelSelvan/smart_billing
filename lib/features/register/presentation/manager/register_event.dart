part of 'register_bloc.dart';

class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class AddRegisterEvent extends RegisterEvent {
  final AddRegisterParams params;

  const AddRegisterEvent({required this.params});
}

class UpdateRegisterEvent extends RegisterEvent {
  final UpdateRegisterParams params;

  const UpdateRegisterEvent({required this.params});
}

class DeleteRegisterEvent extends RegisterEvent {
  final String id;
  const DeleteRegisterEvent({required this.id});
}

class GetAllRegistersEvent extends RegisterEvent {}

class GetARegisterEvent extends RegisterEvent {
  final String id;
  const GetARegisterEvent({required this.id});
}
