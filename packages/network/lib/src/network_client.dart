import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:network/network.dart';

// This is clent class where we will add all required methods like
// GET, PUT, POST, PATCH, etc
class NetworkClient {
  // Network client required dio as a parameter after initializing
  NetworkClient({String baseUrl = ''}) {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
    ));

    if (!kReleaseMode) {
      dio.interceptors.add(
        DioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: false,
          responseBody: true,
          error: true,
        ),
      );
    }
  }

  // this Dio will be required
  late Dio dio;
  void dioOptionsAndInterceptors([List<Interceptor> interceptor = const []]) {
    dio.interceptors.addAll(interceptor);
  }

  Dio get client => dio;

  // whenever we are require to call a GET method, we will use this function.
  // We have flexibility to add other params
  Future<Either<UpdateNetworkException, Response>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return Right(await dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ));
    } on DioError catch (e) {
      return Left(UpdateNetworkException.getDioException(e));
    }
  }

  Future<Either<UpdateNetworkException, Response>> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return Right(await dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ));
    } on DioError catch (e) {
      return Left(UpdateNetworkException.getDioException(e));
    }
  }

  Future<Either<UpdateNetworkException, Response>> patch(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return Right(await dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ));
    } on DioError catch (e) {
      return Left(UpdateNetworkException.getDioException(e));
    }
  }

  Future<Either<UpdateNetworkException, Response>> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return Right(await dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ));
    } on DioError catch (e) {
      return Left(UpdateNetworkException.getDioException(e));
    }
  }
}
