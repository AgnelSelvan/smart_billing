import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/register/domain/entity/register_entity.dart';
import 'package:smart_billing/features/register/domain/repository/register_repository.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class GetAllRegisterUseCase extends UseCase<List<RegisterEntity>, NoParams> {
  final RegisterRepository repository;

  GetAllRegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, List<RegisterEntity>>> call(NoParams params) {
    return repository.getAllRegisters();
  }
}
