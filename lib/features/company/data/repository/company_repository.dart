import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/extension/company/company_model.dart';
import 'package:smart_billing/features/company/data/datasource/company_local_datasource.dart';
import 'package:smart_billing/features/company/data/datasource/company_remote_datasource.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/repository/company_repository.dart';
import 'package:smart_billing/features/company/domain/usecase/add_company_usecase.dart';
import 'package:smart_billing/features/company/domain/usecase/update_company_usecase.dart';

@LazySingleton(as: CompanyRepository)
class CompanyRepositoryImpl implements CompanyRepository {
  final CompanyLocalDataSource localDataSource;
  final CompanyRemoteDataSource remoteDataSource;

  CompanyRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<Failure, CompanyEntity>> createCompany(
      AddCompanyParams companyParams) {
    // TODO: implement createCompany
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CompanyEntity>> getCompany(String id) {
    // TODO: implement getCompany
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CompanyEntity>>> getAllCompanies() {
    // TODO: implement getCompanys
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CompanyEntity>> updateCompany(
      UpdateCompanyParams companyParams) {
    // TODO: implement updateCompany
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CompanyEntity>> deleteCompany(String companyId) {
    // TODO: implement deleteCompany
    throw UnimplementedError();
  }

  @override
  Either<Failure, CompanyEntity> getMyOwnCompany() {
    try {
      final company = localDataSource.getMyOwnCompany();
      if (company == null) {
        return Left(Failure(message: 'No company found'));
      } else {
        return Right(company.toEntity());
      }
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
