import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/register/domain/repository/register_repository.dart';
import 'package:smart_billing/features/register/domain/entity/register_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class DeleteRegisterUseCase extends UseCase<RegisterEntity, String> {
  final RegisterRepository repository;

  DeleteRegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, RegisterEntity>> call(String params) {
    return repository.deleteRegister(params);
  }
}
