import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/home/domain/repository/home_repository.dart';
import 'package:smart_billing/features/home/domain/entity/home_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class DeleteHomeUseCase extends UseCase<HomeEntity, String> {
  final HomeRepository repository;

  DeleteHomeUseCase({required this.repository});

  @override
  Future<Either<Failure, HomeEntity>> call(String params) {
    return repository.deleteHome(params);
  }
}
