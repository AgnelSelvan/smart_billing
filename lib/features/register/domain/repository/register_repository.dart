import 'package:smart_billing/features/register/domain/entity/register_entity.dart';
import 'package:smart_billing/features/register/domain/usecase/add_register_usecase.dart';
import 'package:smart_billing/features/register/domain/usecase/update_register_usecase.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterRepository {
  Future<Either<Failure, RegisterEntity>> getRegister(String id);
  Future<Either<Failure, List<RegisterEntity>>> getAllRegisters();
  Future<Either<Failure, RegisterEntity>> createRegister(AddRegisterParams registerParams);
  Future<Either<Failure, RegisterEntity>> updateRegister(UpdateRegisterParams registerParams);
  Future<Either<Failure, RegisterEntity>> deleteRegister(String registerId);
}
