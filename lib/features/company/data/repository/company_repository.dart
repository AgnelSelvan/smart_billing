import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/extension/company/company_model.dart';
import 'package:smart_billing/features/company/data/datasource/company_local_datasource.dart';
import 'package:smart_billing/features/company/data/datasource/company_remote_datasource.dart';
import 'package:smart_billing/features/company/data/models/company_model.dart';
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
      AddCompanyParams companyParams) async {
    try {
      final response = await localDataSource.addCompany(
        CompanyModel(
          id: companyParams.id,
          name: companyParams.name,
          address: companyParams.address,
          city: companyParams.city,
          state: companyParams.state,
          pincode: companyParams.pincode,
          createdAt: companyParams.createdAt,
          updatedAt: companyParams.createdAt,
          email: companyParams.email,
          website: companyParams.website,
          licNO: companyParams.licNO,
          placeOfDispatch: companyParams.placeOfDispatch,
          pan: companyParams.pan,
          mobileNoList: companyParams.mobileNoList,
          gstin: companyParams.gstin,
          bankIds: companyParams.bankIds,
          companyType: companyParams.companyType,
        ),
      );
      return Right(response);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CompanyEntity>> getCompany(String id) async {
    try {
      final company = await localDataSource.getCompanyById(id);
      if (company == null) {
        return Left(Failure(message: 'No company found'));
      } else {
        return Right(company.toEntity());
      }
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CompanyEntity>>> getAllCompanies() async {
    try {
      final company = await localDataSource.getAllCompanies();
      if (company.isEmpty) {
        return Left(Failure(message: 'No company found'));
      } else {
        return Right(company.map((e) => e.toEntity()).toList());
      }
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
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
