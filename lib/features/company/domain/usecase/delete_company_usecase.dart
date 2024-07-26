import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/repository/company_repository.dart';

@lazySingleton
class DeleteCompanyUseCase extends UseCase<CompanyEntity, String> {
  final CompanyRepository repository;

  DeleteCompanyUseCase({required this.repository});

  @override
  Future<Either<Failure, CompanyEntity>> call(String params) {
    return repository.deleteCompany(params);
  }
}
