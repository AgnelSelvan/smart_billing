import 'package:smart_billing/features/register/domain/entity/register_entity.dart';

class RegisterModel extends RegisterEntity {
  RegisterModel();

  factory RegisterModel.fromJson() {
    return RegisterModel();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
