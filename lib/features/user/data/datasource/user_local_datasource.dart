import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';

abstract class UserLocalDataSource {
  Future<List<UserModel>> getAllUsers();
  Future<UserEntity> addUser(UserModel userModel);
  Future<UserEntity> updateUser(UserModel userModel);
  Future<UserEntity> deleteUser(String userId);
  Future<UserModel?> getUserById(String id);
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl extends UserLocalDataSource {
  final Box<UserModel> userBox;

  UserLocalDataSourceImpl({required this.userBox});

  @override
  Future<UserEntity> addUser(UserModel userModel) async {
    await userBox.add(userModel);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> deleteUser(String userId) async {
    final userModel =
        userBox.values.where((ele) => ele.id == userId).firstOrNull;
    if (userModel == null) {
      throw Exception('User record not found to delete');
    }

    await userBox.delete(userModel.key);
    return userModel.toEntity();
  }

  @override
  Future<List<UserModel>> getAllUsers() async {
    return userBox.values.toList();
  }

  @override
  Future<UserEntity> updateUser(UserModel userModel) async {
    await userBox.put(userModel.key, userModel);
    return userModel.toEntity();
  }

  @override
  Future<UserModel?> getUserById(String id) {
    return Future.value(
        userBox.values.where((ele) => ele.id == id).firstOrNull);
  }
}
