import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/home/domain/entity/home_entity.dart';
import 'package:smart_billing/features/home/domain/repository/home_repository.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class GetAllHomeUseCase extends UseCase<List<HomeEntity>, NoParams> {
  final HomeRepository repository;

  GetAllHomeUseCase({required this.repository});

  @override
  Future<Either<Failure, List<HomeEntity>>> call(NoParams params) {
    return repository.getAllHomes();
  }
}
