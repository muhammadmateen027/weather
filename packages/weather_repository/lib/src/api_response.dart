import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:network/network.dart';

import 'api_response/api_response.dart';

ApiResponse getApiResponse(Either<UpdateNetworkException, Response> result) {
  return result.fold((l) {
    return ApiResponse.error(
      message: UpdateNetworkException.getErrorMessage(l),
      networkException: l,
    );
  }, (r) {
    return ApiResponse.completed(value: r.data);
  });
}
