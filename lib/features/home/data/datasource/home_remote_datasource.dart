import 'package:smart_billing/features/home/data/models/home_model.dart';
import 'package:smart_billing/features/home/domain/entity/home_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeModel>> getAllHomes();
  Future<HomeEntity> addHome(HomeModel homeModel);
  Future<HomeEntity> updateHome(HomeModel homeModel);
  Future<HomeEntity> deleteHome(HomeModel homeModel);
  Future<HomeModel?> getHomeById(String id);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<HomeEntity> addHome(HomeModel homeModel) {
    // TODO: implement addHome
    throw UnimplementedError();
  }

  @override
  Future<HomeEntity> deleteHome(HomeModel homeModel) {
    // TODO: implement deleteHome
    throw UnimplementedError();
  }

  @override
  Future<List<HomeModel>> getAllHomes() {
    // TODO: implement getAllHomes
    throw UnimplementedError();
  }

  @override
  Future<HomeEntity> updateHome(HomeModel homeModel) {
    // TODO: implement updateHome
    throw UnimplementedError();
  }

  @override
  Future<HomeModel?> getHomeById(String id) {
    // TODO: implement getHomeById
    throw UnimplementedError();
  }
}
