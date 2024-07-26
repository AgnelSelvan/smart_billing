import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/unit/domain/repository/unit_repository.dart';
import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class AddUnitUseCase extends UseCase<UnitEntity, AddUnitParams> {
  final UnitRepository repository;

  AddUnitUseCase({required this.repository});

  @override
  Future<Either<Failure, UnitEntity>> call(AddUnitParams params) {
    return repository.createUnit(params);
  }
}

class AddUnitParams {}
