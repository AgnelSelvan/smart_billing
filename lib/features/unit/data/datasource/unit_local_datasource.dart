import 'package:smart_billing/features/unit/data/models/unit_model.dart';
import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';

abstract class UnitLocalDataSource {
  Future<List<UnitModel>> getAllUnits();
  Future<UnitEntity> addUnit(UnitModel unitModel);
  Future<UnitEntity> updateUnit(UnitModel unitModel);
  Future<UnitEntity> deleteUnit(UnitModel unitModel);
  Future<UnitModel?> getUnitById(String id);
}

class UnitLocalDataSourceImpl extends UnitLocalDataSource {

  @override
  Future<UnitEntity> addUnit(UnitModel unitModel) {
    // TODO: implement addUnit
    throw UnimplementedError();
  }

  @override
  Future<UnitEntity> deleteUnit(UnitModel unitModel) {
    // TODO: implement deleteUnit
    throw UnimplementedError();
  }

  @override
  Future<List<UnitModel>> getAllUnits() {
    // TODO: implement getAllUnits
    throw UnimplementedError();
  }

  @override
  Future<UnitEntity> updateUnit(UnitModel unitModel) {
    // TODO: implement updateUnit
    throw UnimplementedError();
  }

  @override
  Future<UnitModel?> getUnitById(String id) {
    // TODO: implement getUnitById
    throw UnimplementedError();
  }
}
