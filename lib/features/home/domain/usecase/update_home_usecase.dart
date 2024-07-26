import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/home/domain/repository/home_repository.dart';
import 'package:smart_billing/features/home/domain/entity/home_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class UpdateHomeUseCase extends UseCase<HomeEntity, UpdateHomeParams> {
  final HomeRepository repository;

  UpdateHomeUseCase({required this.repository});

  @override
  Future<Either<Failure, HomeEntity>> call(UpdateHomeParams params) {
    return repository.updateHome(params);
  }
}

class UpdateHomeParams {}
