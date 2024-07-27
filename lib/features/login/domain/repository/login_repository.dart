import 'package:smart_billing/features/login/domain/entity/login_entity.dart';
import 'package:smart_billing/features/login/domain/usecase/add_login_usecase.dart';
import 'package:smart_billing/features/login/domain/usecase/update_login_usecase.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginEntity>> getLogin(String id);
  Future<Either<Failure, List<LoginEntity>>> getAllLogins();
  Future<Either<Failure, LoginEntity>> createLogin(AddLoginParams loginParams);
  Future<Either<Failure, LoginEntity>> updateLogin(UpdateLoginParams loginParams);
  Future<Either<Failure, LoginEntity>> deleteLogin(String loginId);
}
