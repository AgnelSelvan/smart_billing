import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/company/domain/repository/company_repository.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class UpdateCompanyUseCase extends UseCase<CompanyEntity, UpdateCompanyParams> {
  final CompanyRepository repository;

  UpdateCompanyUseCase({required this.repository});

  @override
  Future<Either<Failure, CompanyEntity>> call(UpdateCompanyParams params) {
    return repository.updateCompany(params);
  }
}

class UpdateCompanyParams {}
