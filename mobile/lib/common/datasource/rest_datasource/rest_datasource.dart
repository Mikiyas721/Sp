import 'dart:typed_data';

import 'package:dio/dio.dart';

import 'rest_request.dart';
import 'rest_response.dart';

abstract class RestDataSource {
  Future<RestResponseWithFailure> get(RestRequest request);

  Future<RestResponseWithFailure> post(RestRequest request);

  Future<RestResponseWithFailure> put(RestRequest request);

  Future<RestResponseWithFailure> patch(RestRequest request);

  Future<RestResponseWithFailure> delete(RestRequest request);

  Future<Response> addCustomerFile(
      String imageName, Uint8List file); //TODO tobe removed
}
