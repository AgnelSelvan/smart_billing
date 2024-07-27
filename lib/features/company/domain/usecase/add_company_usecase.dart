import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/company/data/models/company_model.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/repository/company_repository.dart';

part 'add_company_usecase.freezed.dart';

@lazySingleton
class AddCompanyUseCase extends UseCase<CompanyEntity, AddCompanyParams> {
  final CompanyRepository repository;

  AddCompanyUseCase({required this.repository});

  @override
  Future<Either<Failure, CompanyEntity>> call(AddCompanyParams params) {
    return repository.createCompany(params);
  }
}

@freezed
class AddCompanyParams with _$AddCompanyParams {
  const factory AddCompanyParams({
    required String id,
    required String name,
    required String? address,
    required String? email,
    required String? website,
    required String? licNO,
    required String? placeOfDispatch,
    required String? pan,
    required int? pincode,
    required String? state,
    required String? city,
    @Default(<String>[]) List<String> mobileNoList,
    required String? gstin,
    @Default(<String>[]) List<String> bankIds,
    required DateTime createdAt,
    required CompanyType companyType,
  }) = _AddCompanyParams;
}
