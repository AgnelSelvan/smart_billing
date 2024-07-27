import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';

@lazySingleton
class GetAllUserUseCase extends UseCase<List<UserEntity>, NoParams> {
  final UserRepository repository;

  GetAllUserUseCase({required this.repository});

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) {
    return repository.getAllUsers();
  }
}
