import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/pincode/domain/entities/post_office.dart';
import 'package:smart_billing/features/pincode/domain/repositories/pincode_repository.dart';

@lazySingleton
class GetPincodeDetailsUseCase {
  final PincodeRepository repository;

  GetPincodeDetailsUseCase(this.repository);

  Future<Either<Failure, List<PostOfficeEntity>>> execute(String pincode) {
    return repository.getPincode(pincode);
  }
}
