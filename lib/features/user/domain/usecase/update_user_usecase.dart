import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';

@lazySingleton
class UpdateUserUseCase extends UseCase<UserEntity, UserModel> {
  final UserRepository repository;

  UpdateUserUseCase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(UserModel params) {
    return repository.updateUser(params);
  }
}
