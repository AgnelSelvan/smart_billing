import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/repository/company_repository.dart';

@lazySingleton
class GetMyOwnCompanyUsecase {
  final CompanyRepository repository;

  GetMyOwnCompanyUsecase({required this.repository});

  Either<Failure, CompanyEntity> call() {
    return repository.getMyOwnCompany();
  }
}
