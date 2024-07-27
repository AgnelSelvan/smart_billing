import 'package:smart_billing/features/login/domain/entity/login_entity.dart';

class LoginModel extends LoginEntity {
  LoginModel();

  factory LoginModel.fromJson() {
    return LoginModel();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
