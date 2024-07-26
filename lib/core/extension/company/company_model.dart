import 'package:smart_billing/features/company/data/models/company_model.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';

extension CompanyHelper on CompanyModel {
  CompanyEntity toEntity() {
    return CompanyEntity(
      id: id,
      name: name,
    );
  }
}
