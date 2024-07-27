import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/login/domain/entity/login_entity.dart';
import 'package:smart_billing/features/login/domain/repository/login_repository.dart';
import 'package:smart_billing/features/login/domain/usecase/add_login_usecase.dart';
import 'package:smart_billing/features/login/data/datasource/login_local_datasource.dart';
import 'package:smart_billing/features/login/data/datasource/login_remote_datasource.dart';
import 'package:smart_billing/features/login/domain/usecase/update_login_usecase.dart';
import 'package:dartz/dartz.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginLocalDataSource localDataSource;
  final LoginRemoteDataSource remoteDataSource;

  LoginRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<Failure, LoginEntity>> createLogin(AddLoginParams loginParams) {
    // TODO: implement createLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, LoginEntity>> getLogin(String id) {
    // TODO: implement getLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<LoginEntity>>> getAllLogins() {
    // TODO: implement getLogins
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, LoginEntity>> updateLogin(UpdateLoginParams loginParams) {
    // TODO: implement updateLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, LoginEntity>> deleteLogin(String loginId) {
    // TODO: implement deleteLogin
    throw UnimplementedError();
  }
}

