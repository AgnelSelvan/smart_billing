import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/home/domain/entity/home_entity.dart';
import 'package:smart_billing/features/home/domain/repository/home_repository.dart';
import 'package:smart_billing/features/home/domain/usecase/add_home_usecase.dart';
import 'package:smart_billing/features/home/data/datasource/home_local_datasource.dart';
import 'package:smart_billing/features/home/data/datasource/home_remote_datasource.dart';
import 'package:smart_billing/features/home/domain/usecase/update_home_usecase.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<Failure, HomeEntity>> createHome(AddHomeParams homeParams) {
    // TODO: implement createHome
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, HomeEntity>> getHome(String id) {
    // TODO: implement getHome
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<HomeEntity>>> getAllHomes() {
    // TODO: implement getHomes
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, HomeEntity>> updateHome(UpdateHomeParams homeParams) {
    // TODO: implement updateHome
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, HomeEntity>> deleteHome(String homeId) {
    // TODO: implement deleteHome
    throw UnimplementedError();
  }
}

