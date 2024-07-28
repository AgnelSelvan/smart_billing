import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';

@lazySingleton
class UserLoginUseCase {
  final UserRepository repository;

  UserLoginUseCase({required this.repository});

  Either<Failure, UserEntity> call((String, String) emailPassword) {
    return repository.userLogin(emailPassword.$1, emailPassword.$2);
  }
}
