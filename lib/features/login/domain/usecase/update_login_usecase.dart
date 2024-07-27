import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/login/domain/repository/login_repository.dart';
import 'package:smart_billing/features/login/domain/entity/login_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class UpdateLoginUseCase extends UseCase<LoginEntity, UpdateLoginParams> {
  final LoginRepository repository;

  UpdateLoginUseCase({required this.repository});

  @override
  Future<Either<Failure, LoginEntity>> call(UpdateLoginParams params) {
    return repository.updateLogin(params);
  }
}

class UpdateLoginParams {}
