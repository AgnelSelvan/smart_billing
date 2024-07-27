import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';

@lazySingleton
class DeleteUserUseCase extends UseCase<UserEntity, String> {
  final UserRepository repository;

  DeleteUserUseCase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(String params) {
    return repository.deleteUser(params);
  }
}
