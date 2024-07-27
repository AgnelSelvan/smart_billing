part of 'register_bloc.dart';

class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class AddOwnerDetailsAndRegisterCompanyEvent extends RegisterEvent {
  final AddUserParams addUserParams;
  final AddCompanyParams addCompanyParams;

  const AddOwnerDetailsAndRegisterCompanyEvent({
    required this.addUserParams,
    required this.addCompanyParams,
  });
}
