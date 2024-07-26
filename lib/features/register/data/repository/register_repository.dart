import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/register/domain/entity/register_entity.dart';
import 'package:smart_billing/features/register/domain/repository/register_repository.dart';
import 'package:smart_billing/features/register/domain/usecase/add_register_usecase.dart';
import 'package:smart_billing/features/register/data/datasource/register_local_datasource.dart';
import 'package:smart_billing/features/register/data/datasource/register_remote_datasource.dart';
import 'package:smart_billing/features/register/domain/usecase/update_register_usecase.dart';
import 'package:dartz/dartz.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final RegisterLocalDataSource localDataSource;
  final RegisterRemoteDataSource remoteDataSource;

  RegisterRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<Failure, RegisterEntity>> createRegister(AddRegisterParams registerParams) {
    // TODO: implement createRegister
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, RegisterEntity>> getRegister(String id) {
    // TODO: implement getRegister
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<RegisterEntity>>> getAllRegisters() {
    // TODO: implement getRegisters
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, RegisterEntity>> updateRegister(UpdateRegisterParams registerParams) {
    // TODO: implement updateRegister
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, RegisterEntity>> deleteRegister(String registerId) {
    // TODO: implement deleteRegister
    throw UnimplementedError();
  }
}

