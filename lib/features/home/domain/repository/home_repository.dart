import 'package:smart_billing/features/home/domain/entity/home_entity.dart';
import 'package:smart_billing/features/home/domain/usecase/add_home_usecase.dart';
import 'package:smart_billing/features/home/domain/usecase/update_home_usecase.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> getHome(String id);
  Future<Either<Failure, List<HomeEntity>>> getAllHomes();
  Future<Either<Failure, HomeEntity>> createHome(AddHomeParams homeParams);
  Future<Either<Failure, HomeEntity>> updateHome(UpdateHomeParams homeParams);
  Future<Either<Failure, HomeEntity>> deleteHome(String homeId);
}
