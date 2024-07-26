import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';
import 'package:smart_billing/features/unit/domain/repository/unit_repository.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class GetAllUnitUseCase extends UseCase<List<UnitEntity>, NoParams> {
  final UnitRepository repository;

  GetAllUnitUseCase({required this.repository});

  @override
  Future<Either<Failure, List<UnitEntity>>> call(NoParams params) {
    return repository.getAllUnits();
  }
}
