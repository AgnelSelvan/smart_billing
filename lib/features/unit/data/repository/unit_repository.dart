import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';
import 'package:smart_billing/features/unit/domain/repository/unit_repository.dart';
import 'package:smart_billing/features/unit/domain/usecase/add_unit_usecase.dart';
import 'package:smart_billing/features/unit/data/datasource/unit_local_datasource.dart';
import 'package:smart_billing/features/unit/data/datasource/unit_remote_datasource.dart';
import 'package:smart_billing/features/unit/domain/usecase/update_unit_usecase.dart';
import 'package:dartz/dartz.dart';

class UnitRepositoryImpl extends UnitRepository {
  final UnitLocalDataSource localDataSource;
  final UnitRemoteDataSource remoteDataSource;

  UnitRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<Failure, UnitEntity>> createUnit(AddUnitParams unitParams) {
    // TODO: implement createUnit
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UnitEntity>> getUnit(String id) {
    // TODO: implement getUnit
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UnitEntity>>> getAllUnits() {
    // TODO: implement getUnits
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UnitEntity>> updateUnit(UpdateUnitParams unitParams) {
    // TODO: implement updateUnit
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UnitEntity>> deleteUnit(String unitId) {
    // TODO: implement deleteUnit
    throw UnimplementedError();
  }
}

