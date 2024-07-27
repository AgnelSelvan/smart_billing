import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/extension/company/company_model.dart';
import 'package:smart_billing/features/company/data/models/company_model.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';

abstract class CompanyLocalDataSource {
  Future<List<CompanyModel>> getAllCompanies();
  Future<CompanyEntity> addCompany(CompanyModel companyModel);
  Future<CompanyEntity> updateCompany(CompanyModel companyModel);
  Future<CompanyEntity> deleteCompany(CompanyModel companyModel);
  Future<CompanyModel?> getCompanyById(String id);
  CompanyModel? getMyOwnCompany();
}

@LazySingleton(as: CompanyLocalDataSource)
class CompanyLocalDataSourceImpl extends CompanyLocalDataSource {
  final Box<CompanyModel> companyBox;

  CompanyLocalDataSourceImpl({required this.companyBox});

  @override
  Future<CompanyEntity> addCompany(CompanyModel companyModel) async {
    await companyBox.add(companyModel);
    return companyModel.toEntity();
  }

  @override
  Future<CompanyEntity> deleteCompany(CompanyModel companyModel) async {
    await companyBox.delete(companyModel.key);
    return companyModel.toEntity();
  }

  @override
  Future<List<CompanyModel>> getAllCompanies() async {
    return companyBox.values.toList();
  }

  @override
  Future<CompanyEntity> updateCompany(CompanyModel companyModel) async {
    await companyBox.put(companyModel.key, companyModel);
    return companyModel.toEntity();
  }

  @override
  Future<CompanyModel?> getCompanyById(String id) async {
    return companyBox.values.where((ele) => ele.id == id).firstOrNull;
  }

  @override
  CompanyModel? getMyOwnCompany() {
    return companyBox.values
        .where((ele) => ele.companyType == CompanyType.own)
        .firstOrNull;
  }
}
