import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/login/domain/repository/login_repository.dart';
import 'package:smart_billing/features/login/domain/entity/login_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class DeleteLoginUseCase extends UseCase<LoginEntity, String> {
  final LoginRepository repository;

  DeleteLoginUseCase({required this.repository});

  @override
  Future<Either<Failure, LoginEntity>> call(String params) {
    return repository.deleteLogin(params);
  }
}
