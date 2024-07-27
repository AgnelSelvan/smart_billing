import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/login/domain/repository/login_repository.dart';
import 'package:smart_billing/features/login/domain/entity/login_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class AddLoginUseCase extends UseCase<LoginEntity, AddLoginParams> {
  final LoginRepository repository;

  AddLoginUseCase({required this.repository});

  @override
  Future<Either<Failure, LoginEntity>> call(AddLoginParams params) {
    return repository.createLogin(params);
  }
}

class AddLoginParams {}
