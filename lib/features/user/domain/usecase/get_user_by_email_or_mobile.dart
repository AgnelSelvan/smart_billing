import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';

@lazySingleton
class GetUserByEmailOrMobileUseCase {
  final UserRepository repository;

  GetUserByEmailOrMobileUseCase({required this.repository});

  Either<Failure, UserEntity> call(String params) {
    return repository.getUserByEmailOrMobileNo(params);
  }
}
