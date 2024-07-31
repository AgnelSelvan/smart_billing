import 'package:dartz/dartz.dart';
import 'package:smart_billing/core/enum/search.dart';
import 'package:smart_billing/core/enum/sort.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser(String id);
  Future<Either<Failure, List<UserEntity>>> getAllUsers();
  Future<Either<Failure, UserEntity>> createUser(AddUserParams userParams);
  Future<Either<Failure, UserEntity>> updateUser(UserModel userParams);
  Future<Either<Failure, UserEntity>> deleteUser(String userId);
  Either<Failure, UserEntity> getUserByEmailOrMobileNo(String email);
  Either<Failure, UserEntity> userLogin(String email, String password);
  Either<Failure, List<UserEntity>> getAllUsersBySearch(
    String search,
    EmployeeSearchCategory category,
    EmployeeSortBy sortBy,
  );
}
