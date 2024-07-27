import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/enum/box_type.dart';
import 'package:smart_billing/features/company/data/models/company_model.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';

@module
abstract class HiveBoxModule {
  @lazySingleton
  @preResolve
  Future<Box<CompanyModel>> openCompanyBox() =>
      Hive.openBox<CompanyModel>(BoxType.company.name);

  @lazySingleton
  @preResolve
  Future<Box<UserModel>> openEmployeeBox() =>
      Hive.openBox<UserModel>(BoxType.employee.name);
}

class HiveAdapters {
  Future<void> initHive() async {
    await Hive.initFlutter();

    Hive
      ..registerAdapter(CompanyModelAdapter())
      ..registerAdapter(CompanyTypeAdapter())
      ..registerAdapter(UserStatusAdapter())
      ..registerAdapter(UserRoleAdapter())
      ..registerAdapter(UserModelAdapter());
  }

  static Map<Box<dynamic>, dynamic Function(dynamic json)> get allBoxes => {
        Hive.box<UserModel>(BoxType.employee.name): (json) =>
            UserModel.fromJson(json),
        Hive.box<CompanyModel>(BoxType.company.name): (json) =>
            CompanyModel.fromJson(json),
      };
}
