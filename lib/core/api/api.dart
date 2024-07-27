import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
// import 'package:smart_billing/core/utils/flavor/flavor.dart';

@injectable
class APIHandler {
//   final AppFlavor flavor;
//   APIHandler(this.flavor);

  //TODO: Change Base URL
  String get apiBaseUrl => "flavor.baseUrl";

  Future<http.Response> post(
    String endpoint, {
    Map<String, dynamic>? body,
  }) async {
    try {
      final url = "$apiBaseUrl$endpoint";
      log("Url: $url");
      final response = await http.post(Uri.parse(url), body: body);
      return _response(response);
    } on SocketException {
      throw ServerFailure(message: 'No Internet connection');
    } catch (e) {
      rethrow;
    }
  }

  Future<http.Response> put(
    String endpoint, {
    Map<String, dynamic>? body,
  }) async {
    try {
      final url = "$apiBaseUrl$endpoint";
      log("Url: $url");
      final response = await http.put(Uri.parse(url), body: body);
      return _response(response);
    } on SocketException {
      throw ServerFailure(message: 'No Internet connection');
    } catch (e) {
      rethrow;
    }
  }

  Future<http.Response> get(String endpoint, {String? baseUrl}) async {
    try {
      final url = "${baseUrl ?? apiBaseUrl}$endpoint";
      log("Url: $url");
      final response = await http.get(Uri.parse(url));
      return _response(response);
    } on SocketException {
      throw ServerFailure(message: 'No Internet connection');
    } catch (e) {
      rethrow;
    }
  }

  http.Response _response(http.Response response) {
    log("Status Code: ${response.statusCode}");
    log("Response: ${response.body}");
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw ServerFailure(message: response.body);
      case 401:
      case 403:
        throw ServerFailure(message: response.body);
      case 500:
        throw ServerFailure(message: "Internal Server Error");
      default:
        throw ServerFailure(
          message:
              'Error occured while Communication with Server with StatusCode : ${response.statusCode}',
        );
    }
  }
}
