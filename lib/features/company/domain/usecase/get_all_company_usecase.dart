import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/repository/company_repository.dart';

@lazySingleton
class GetAllCompanyUseCase extends UseCase<List<CompanyEntity>, NoParams> {
  final CompanyRepository repository;

  GetAllCompanyUseCase({required this.repository});

  @override
  Future<Either<Failure, List<CompanyEntity>>> call(NoParams params) {
    return repository.getAllCompanies();
  }
}
