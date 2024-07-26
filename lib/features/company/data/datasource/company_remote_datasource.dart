import 'package:injectable/injectable.dart';
import 'package:smart_billing/features/company/data/models/company_model.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';

abstract class CompanyRemoteDataSource {
  Future<List<CompanyModel>> getAllCompanies();
  Future<CompanyEntity> addCompany(CompanyModel companyModel);
  Future<CompanyEntity> updateCompany(CompanyModel companyModel);
  Future<CompanyEntity> deleteCompany(CompanyModel companyModel);
  Future<CompanyModel?> getCompanyById(String id);
}

@LazySingleton(as: CompanyRemoteDataSource)
class CompanyRemoteDataSourceImpl extends CompanyRemoteDataSource {
  @override
  Future<CompanyEntity> addCompany(CompanyModel companyModel) {
    // TODO: implement addCompany
    throw UnimplementedError();
  }

  @override
  Future<CompanyEntity> deleteCompany(CompanyModel companyModel) {
    // TODO: implement deleteCompany
    throw UnimplementedError();
  }

  @override
  Future<List<CompanyModel>> getAllCompanies() {
    // TODO: implement getAllCompanies
    throw UnimplementedError();
  }

  @override
  Future<CompanyEntity> updateCompany(CompanyModel companyModel) {
    // TODO: implement updateCompany
    throw UnimplementedError();
  }

  @override
  Future<CompanyModel?> getCompanyById(String id) {
    // TODO: implement getCompanyById
    throw UnimplementedError();
  }
}
