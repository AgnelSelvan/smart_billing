import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';
import 'package:smart_billing/features/unit/domain/usecase/add_unit_usecase.dart';
import 'package:smart_billing/features/unit/domain/usecase/update_unit_usecase.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UnitRepository {
  Future<Either<Failure, UnitEntity>> getUnit(String id);
  Future<Either<Failure, List<UnitEntity>>> getAllUnits();
  Future<Either<Failure, UnitEntity>> createUnit(AddUnitParams unitParams);
  Future<Either<Failure, UnitEntity>> updateUnit(UpdateUnitParams unitParams);
  Future<Either<Failure, UnitEntity>> deleteUnit(String unitId);
}
