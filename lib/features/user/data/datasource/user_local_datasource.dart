import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/utils/encrypt/encrypt_decrypt.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';

abstract class UserLocalDataSource {
  Future<List<UserModel>> getAllUsers();
  Future<UserEntity> addUser(UserModel userModel);
  Future<UserEntity> updateUser(UserModel userModel);
  Future<UserEntity> deleteUser(String userId);
  Future<UserModel?> getUserById(String id);
  UserEntity? getUserByEmailOrMobileNo(String email);
  UserEntity? userLogin(String email, String password);
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

  @override
  UserEntity? getUserByEmailOrMobileNo(String email) {
    return userBox.values
        .where((ele) => ele.email == email || ele.mobile.contains(email))
        .firstOrNull
        ?.toEntity();
  }

  @override
  UserEntity? userLogin(String email, String password) {
    final userEntity = getUserByEmailOrMobileNo(email);
    if (userEntity == null) {
      throw Exception('User not found');
    }
    if (EncryptDecryptManager.decrypt(userEntity.password, password)) {
      return userEntity;
    } else {
      throw Exception('Invalid password');
    }
  }
}
