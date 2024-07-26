import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/unit/domain/repository/unit_repository.dart';
import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class UpdateUnitUseCase extends UseCase<UnitEntity, UpdateUnitParams> {
  final UnitRepository repository;

  UpdateUnitUseCase({required this.repository});

  @override
  Future<Either<Failure, UnitEntity>> call(UpdateUnitParams params) {
    return repository.updateUnit(params);
  }
}

class UpdateUnitParams {}
