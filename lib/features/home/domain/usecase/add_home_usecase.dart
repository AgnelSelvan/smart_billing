import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/home/domain/repository/home_repository.dart';
import 'package:smart_billing/features/home/domain/entity/home_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class AddHomeUseCase extends UseCase<HomeEntity, AddHomeParams> {
  final HomeRepository repository;

  AddHomeUseCase({required this.repository});

  @override
  Future<Either<Failure, HomeEntity>> call(AddHomeParams params) {
    return repository.createHome(params);
  }
}

class AddHomeParams {}
