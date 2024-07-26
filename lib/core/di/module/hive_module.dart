import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/enum/box_type.dart';
import 'package:smart_billing/features/company/data/models/company_model.dart';

@module
abstract class HiveBoxModule {
  @lazySingleton
  @preResolve
  Future<Box<CompanyModel>> openCompanyBox() =>
      Hive.openBox<CompanyModel>(BoxType.company.name);

  @lazySingleton
  @preResolve
  Future<Box<T>> openBox<T>(
    @Named('boxName') String boxName,
  ) async {
    final box = await Hive.openBox<T>(boxName);
    return box;
  }
}

class HiveAdapters {
  void initAdapters() {
    Hive.registerAdapter(CompanyModelAdapter());
  }
}
