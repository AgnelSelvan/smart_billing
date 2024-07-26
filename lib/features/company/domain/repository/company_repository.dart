import 'package:dartz/dartz.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/usecase/add_company_usecase.dart';
import 'package:smart_billing/features/company/domain/usecase/update_company_usecase.dart';

abstract interface class CompanyRepository {
  Future<Either<Failure, CompanyEntity>> getCompany(String id);
  Future<Either<Failure, List<CompanyEntity>>> getAllCompanies();
  Future<Either<Failure, CompanyEntity>> createCompany(
      AddCompanyParams companyParams);
  Future<Either<Failure, CompanyEntity>> updateCompany(
      UpdateCompanyParams companyParams);
  Future<Either<Failure, CompanyEntity>> deleteCompany(String companyId);
  Either<Failure, CompanyEntity> getMyOwnCompany();
}
