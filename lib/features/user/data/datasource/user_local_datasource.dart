import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/enum/search.dart';
import 'package:smart_billing/core/enum/sort.dart';
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
  List<UserEntity> getAllUsersBySearch(
    String search,
    EmployeeSearchCategory category,
    EmployeeSortBy sortBy,
  );
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl extends UserLocalDataSource {
  final Box<UserModel> userBox;

  UserLocalDataSourceImpl({required this.userBox});

  Future<bool> _validate(UserModel userModel) async {
    if (userModel.email == null || userModel.email!.isEmpty) {
      throw Exception('Email is required');
    }
    if (userModel.mobile.isEmpty) {
      throw Exception('Mobile number is required');
    }
    if (userModel.password.isEmpty) {
      throw Exception('Password is required');
    }
    final users = await getAllUsers();
    final sameUser = users
        .where((e) => e.mobile.contains(userModel.mobile.firstOrNull))
        .firstOrNull;
    if (sameUser != null) {
      throw Exception('User already exists with this mobile number');
    }
    return true;
  }

  @override
  Future<UserEntity> addUser(UserModel userModel) async {
    final isValid = await _validate(userModel);
    if (isValid) {
      await userBox.add(userModel);
      return userModel.toEntity();
    }
    throw Exception('User not added');
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
    final isValid = await _validate(userModel);
    if (isValid) {
      await userBox.put(userModel.key, userModel);
      return userModel.toEntity();
    }
    throw Exception('User not updated');
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

  @override
  List<UserEntity> getAllUsersBySearch(
      String search, EmployeeSearchCategory category, EmployeeSortBy sortBy) {
    print('DS search: $search category: $category sortBy: $sortBy');

    List<UserModel> users = userBox.values.toList();
    if (search.isNotEmpty) {
      if (category == EmployeeSearchCategory.email) {
        users = users
            .where((e) =>
                (e.email ?? '').toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else if (category == EmployeeSearchCategory.name) {
        users = users
            .where((e) => (e.name).toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else if (category == EmployeeSearchCategory.city) {
        users = users
            .where((e) =>
                (e.city ?? '').toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else if (category == EmployeeSearchCategory.mobileNo) {
        users = users
            .where((e) => e.mobile
                .toString()
                .toLowerCase()
                .contains(search.toLowerCase()))
            .toList();
      } else if (category == EmployeeSearchCategory.pincode) {
        users = users
            .where((e) => (e.pincode ?? 0)
                .toString()
                .toLowerCase()
                .contains(search.toLowerCase()))
            .toList();
      } else if (category == EmployeeSearchCategory.role) {
        users = users
            .where(
                (e) => e.role.name.toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else if (category == EmployeeSearchCategory.state) {
        users = users
            .where((e) =>
                (e.state ?? '').toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else if (category == EmployeeSearchCategory.userCode) {
        users = users
            .where((e) =>
                (e.employeeCode).toLowerCase().contains(search.toLowerCase()))
            .toList();
      }
    }
    if (sortBy == EmployeeSortBy.name) {
      users
          .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    } else if (sortBy == EmployeeSortBy.city) {
      users.sort((a, b) => (a.city ?? '').compareTo((b.city ?? '')));
    } else if (sortBy == EmployeeSortBy.createdAt) {
      users.sort((a, b) => a.createdAt.compareTo(b.createdAt));
    } else if (sortBy == EmployeeSortBy.state) {
      users.sort((a, b) => (a.state ?? '').compareTo((b.state ?? '')));
    } else if (sortBy == EmployeeSortBy.userCode) {
      users.sort((a, b) => a.employeeCode.compareTo(b.employeeCode));
    }
    print('all users: ${users.map((e) => e.name)}');
    return users.map((e) => e.toEntity()).toList();
  }
}
