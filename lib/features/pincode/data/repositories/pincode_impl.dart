import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/pincode/data/datasources/remote_data_source.dart';
import 'package:smart_billing/features/pincode/data/models/pincode.dart';
import 'package:smart_billing/features/pincode/domain/entities/post_office.dart';
import 'package:smart_billing/features/pincode/domain/repositories/pincode_repository.dart';

@LazySingleton(as: PincodeRepository)
class PincodeRepositoryImpl extends PincodeRepository {
  final PincodeRDS pincodeRDS;

  PincodeRepositoryImpl(this.pincodeRDS);
  @override
  Future<Either<Failure, List<PostOfficeEntity>>> getPincode(
      String pincode) async {
    try {
      final result = await pincodeRDS.pincode(pincode);
      final postOffice =
          result?.postOffice.map((e) => e.toEntity()).toList() ?? [];
      if (postOffice.isEmpty) {
        return Left(Failure(message: "No data found"));
      }
      return Right(postOffice);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
