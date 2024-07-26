import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/register/domain/repository/register_repository.dart';
import 'package:smart_billing/features/register/domain/entity/register_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class AddRegisterUseCase extends UseCase<RegisterEntity, AddRegisterParams> {
  final RegisterRepository repository;

  AddRegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, RegisterEntity>> call(AddRegisterParams params) {
    return repository.createRegister(params);
  }
}

class AddRegisterParams {}
