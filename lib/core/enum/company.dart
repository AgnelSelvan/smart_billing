import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 1)
enum CompanyType {
  @HiveField(0)
  own,
  @HiveField(1)
  buyer,
  @HiveField(2)
  seller;
}
