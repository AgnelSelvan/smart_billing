import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/login/domain/entity/login_entity.dart';
import 'package:smart_billing/features/login/domain/repository/login_repository.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class GetAllLoginUseCase extends UseCase<List<LoginEntity>, NoParams> {
  final LoginRepository repository;

  GetAllLoginUseCase({required this.repository});

  @override
  Future<Either<Failure, List<LoginEntity>>> call(NoParams params) {
    return repository.getAllLogins();
  }
}
