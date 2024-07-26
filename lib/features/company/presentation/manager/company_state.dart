part of 'company_bloc.dart';

class CompanyState extends Equatable {
  final List<CompanyEntity> allCompanys;
  final CompanyEntity? aCompany;
  const CompanyState({
    this.allCompanys = const [],
    this.aCompany,
  });

  @override
  List<Object> get props => [];

  CompanyState copyWith({
    List<CompanyEntity>? allCompanys,
    CompanyEntity? aCompany,
  }) {
    return CompanyState(
      allCompanys: allCompanys ?? this.allCompanys,
      aCompany: aCompany ?? this.aCompany,
    );
  }

  CompanyError emitError(Failure error) {
    return CompanyError(
      message: error,
      allCompanys: allCompanys,
      aCompany: aCompany,
    );
  }

  CompanyLoaded emitLoaded() {
    return CompanyLoaded(
      allCompanys: allCompanys,
      aCompany: aCompany,
    );
  }
}

class CompanyError extends CompanyState {
  final Failure message;
  const CompanyError({
    super.aCompany,
    super.allCompanys,
    required this.message,
  });
}

class CompanyLoading extends CompanyState {
  const CompanyLoading({
    super.aCompany,
    super.allCompanys,
  });
}


class CompanyLoaded extends CompanyState {
  const CompanyLoaded({
    super.aCompany,
    super.allCompanys,
  });
}
