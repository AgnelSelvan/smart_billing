import 'package:smart_billing/features/login/data/models/login_model.dart';
import 'package:smart_billing/features/login/domain/entity/login_entity.dart';

abstract class LoginRemoteDataSource {
  Future<List<LoginModel>> getAllLogins();
  Future<LoginEntity> addLogin(LoginModel loginModel);
  Future<LoginEntity> updateLogin(LoginModel loginModel);
  Future<LoginEntity> deleteLogin(LoginModel loginModel);
  Future<LoginModel?> getLoginById(String id);
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  @override
  Future<LoginEntity> addLogin(LoginModel loginModel) {
    // TODO: implement addLogin
    throw UnimplementedError();
  }

  @override
  Future<LoginEntity> deleteLogin(LoginModel loginModel) {
    // TODO: implement deleteLogin
    throw UnimplementedError();
  }

  @override
  Future<List<LoginModel>> getAllLogins() {
    // TODO: implement getAllLogins
    throw UnimplementedError();
  }

  @override
  Future<LoginEntity> updateLogin(LoginModel loginModel) {
    // TODO: implement updateLogin
    throw UnimplementedError();
  }

  @override
  Future<LoginModel?> getLoginById(String id) {
    // TODO: implement getLoginById
    throw UnimplementedError();
  }
}
