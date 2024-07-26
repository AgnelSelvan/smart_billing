import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';
import 'package:smart_billing/features/unit/domain/repository/unit_repository.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class GetAUnitUseCase extends UseCase<UnitEntity?, String> {
  final UnitRepository repository;

  GetAUnitUseCase({required this.repository});

  @override
  Future<Either<Failure, UnitEntity?>> call(String params) {
    return repository.getUnit(params);
  }
}
