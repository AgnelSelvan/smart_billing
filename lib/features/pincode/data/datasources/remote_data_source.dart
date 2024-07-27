import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/api/api.dart';
import 'package:smart_billing/features/pincode/data/models/pincode.dart';

abstract interface class PincodeRDS {
  Future<PincodeModel?> pincode(String pincode);
}

@LazySingleton(as: PincodeRDS)
class PincodeRDSImpl extends APIHandler implements PincodeRDS {
  final APIHandler apiHandler;
  PincodeRDSImpl(this.apiHandler);

  @override
  Future<PincodeModel?> pincode(String pincode) async {
    try {
      final response = await apiHandler.get(
        '/pincode/$pincode',
        baseUrl: 'https://api.postalpincode.in',
      );
      // http.Response response = await http
      //     .get(Uri.parse('https://api.postalpincode.in/pincode/$pincode'));
      log("response: ${response.body}");
      final resJson = jsonDecode(response.body);
      if (resJson is List) {
        return PincodeModel.fromJson(resJson.first as Map<String, dynamic>);
      } else {
        return PincodeModel.fromJson(resJson as Map<String, dynamic>);
      }
    } catch (e) {
      log("Error: $e");
      rethrow;
    }
  }
}
