import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';

part 'add_user_usecase.freezed.dart';

@lazySingleton
class AddUserUseCase extends UseCase<UserEntity, AddUserParams> {
  final UserRepository repository;

  AddUserUseCase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(AddUserParams params) {
    return repository.createUser(params);
  }
}

@freezed
class AddUserParams with _$AddUserParams {
  const factory AddUserParams({
    required String id,
    required String name,
    required String? email,
    required String password,
    required List<String> mobile,
    required String? address,
    required String? city,
    required String? state,
    required int? pincode,
    required DateTime createdAt,
    required UserRole role,
    required UserStatus status,
  }) = _AddUserParams;
}
