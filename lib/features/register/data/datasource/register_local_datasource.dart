import 'package:smart_billing/features/register/data/models/register_model.dart';
import 'package:smart_billing/features/register/domain/entity/register_entity.dart';

abstract class RegisterLocalDataSource {
  Future<List<RegisterModel>> getAllRegisters();
  Future<RegisterEntity> addRegister(RegisterModel registerModel);
  Future<RegisterEntity> updateRegister(RegisterModel registerModel);
  Future<RegisterEntity> deleteRegister(RegisterModel registerModel);
  Future<RegisterModel?> getRegisterById(String id);
}

class RegisterLocalDataSourceImpl extends RegisterLocalDataSource {

  @override
  Future<RegisterEntity> addRegister(RegisterModel registerModel) {
    // TODO: implement addRegister
    throw UnimplementedError();
  }

  @override
  Future<RegisterEntity> deleteRegister(RegisterModel registerModel) {
    // TODO: implement deleteRegister
    throw UnimplementedError();
  }

  @override
  Future<List<RegisterModel>> getAllRegisters() {
    // TODO: implement getAllRegisters
    throw UnimplementedError();
  }

  @override
  Future<RegisterEntity> updateRegister(RegisterModel registerModel) {
    // TODO: implement updateRegister
    throw UnimplementedError();
  }

  @override
  Future<RegisterModel?> getRegisterById(String id) {
    // TODO: implement getRegisterById
    throw UnimplementedError();
  }
}
