import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/register/domain/repository/register_repository.dart';
import 'package:smart_billing/features/register/domain/entity/register_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class UpdateRegisterUseCase extends UseCase<RegisterEntity, UpdateRegisterParams> {
  final RegisterRepository repository;

  UpdateRegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, RegisterEntity>> call(UpdateRegisterParams params) {
    return repository.updateRegister(params);
  }
}

class UpdateRegisterParams {}
