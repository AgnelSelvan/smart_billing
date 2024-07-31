import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/user/data/datasource/user_local_datasource.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserLocalDataSource localDataSource;

  UserRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, UserEntity>> createUser(
      AddUserParams userParams) async {
    try {
      final user = await localDataSource.addUser(
        UserModel(
          id: userParams.id,
          name: userParams.name,
          password: userParams.password,
          mobile: userParams.mobile,
          createdAt: userParams.createdAt,
          updatedAt: userParams.createdAt,
          role: userParams.role,
          status: userParams.status,
          email: userParams.email,
          address: userParams.address,
          city: userParams.city,
          state: userParams.state,
          pincode: userParams.pincode,
          employeeCode: userParams.employeeCode,
          bloodGroup: userParams.bloodGroup,
          emergencyMobileNo: userParams.emergencyMobileNo,
          dob: userParams.dob,
        ),
      );
      return Right(user);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUser(String id) async {
    try {
      final user = await localDataSource.getUserById(id);
      if (user == null) {
        return Left(Failure(message: 'User not found'));
      }
      return Right(user.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getAllUsers() async {
    try {
      final users = await localDataSource.getAllUsers();
      return Right(users.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateUser(UserModel userParams) async {
    try {
      return Right(
        await localDataSource.updateUser(userParams),
      );
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> deleteUser(String userId) async {
    try {
      return Right(
        await localDataSource.deleteUser(userId),
      );
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Either<Failure, UserEntity> getUserByEmailOrMobileNo(String email) {
    try {
      final user = localDataSource.getUserByEmailOrMobileNo(email);
      if (user == null) {
        return Left(Failure(message: 'User not found'));
      }
      return Right(user);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Either<Failure, UserEntity> userLogin(String email, String password) {
    try {
      final user = localDataSource.userLogin(email, password);
      if (user == null) {
        return Left(Failure(message: 'User not found'));
      }
      return Right(user);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
