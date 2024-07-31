import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/enum/search.dart';
import 'package:smart_billing/core/enum/sort.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/repository/user_repository.dart';

@lazySingleton
class GetAllUserBySearchUseCase {
  final UserRepository repository;

  GetAllUserBySearchUseCase({required this.repository});

  Either<Failure, List<UserEntity>> call(
    (
      String,
      EmployeeSearchCategory,
      EmployeeSortBy,
    ) params,
  ) {
    return repository.getAllUsersBySearch(params.$1, params.$2, params.$3);
  }
}
