part of 'company_bloc.dart';

class CompanyEvent extends Equatable {
  const CompanyEvent();

  @override
  List<Object> get props => [];
}

class AddCompanyEvent extends CompanyEvent {
  final AddCompanyParams params;

  const AddCompanyEvent({required this.params});
}

class UpdateCompanyEvent extends CompanyEvent {
  final UpdateCompanyParams params;

  const UpdateCompanyEvent({required this.params});
}

class DeleteCompanyEvent extends CompanyEvent {
  final String id;
  const DeleteCompanyEvent({required this.id});
}

class GetAllCompanysEvent extends CompanyEvent {}

class GetACompanyEvent extends CompanyEvent {
  final String id;
  const GetACompanyEvent({required this.id});
}
