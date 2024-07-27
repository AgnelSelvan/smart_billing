import 'package:dartz/dartz.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/pincode/domain/entities/post_office.dart';

abstract class PincodeRepository {
  Future<Either<Failure, List<PostOfficeEntity>>> getPincode(String pincode);
}
