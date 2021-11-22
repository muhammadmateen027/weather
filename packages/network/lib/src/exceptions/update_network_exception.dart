import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_network_exception.freezed.dart';

@freezed
class UpdateNetworkException
    with _$UpdateNetworkException
    implements Exception {
  const UpdateNetworkException._() : super();

  const factory UpdateNetworkException(Response? response) =
      _UpdateNetworkException;

  const factory UpdateNetworkException.requestCancelled(Response? response) =
      RequestCancelled;

  const factory UpdateNetworkException.unauthorizedRequest(Response? response) =
      UnauthorizedRequest;

  const factory UpdateNetworkException.badRequest(Response? response) =
      BadRequest;

  const factory UpdateNetworkException.notFound(
      Response? response, String reason) = NotFound;

  const factory UpdateNetworkException.methodNotAllowed(Response? response) =
      MethodNotAllowed;

  const factory UpdateNetworkException.notAcceptable(Response? response) =
      NotAcceptable;

  const factory UpdateNetworkException.requestTimeout(Response? response) =
      RequestTimeout;

  const factory UpdateNetworkException.sendTimeout(Response? response) =
      SendTimeout;

  const factory UpdateNetworkException.conflict(Response? response) = Conflict;

  const factory UpdateNetworkException.internalServerError(Response? response) =
      InternalServerError;

  const factory UpdateNetworkException.notImplemented(Response? response) =
      NotImplemented;

  const factory UpdateNetworkException.serviceUnavailable(Response? response) =
      ServiceUnavailable;

  const factory UpdateNetworkException.noInternetConnection() =
      NoInternetConnection;

  const factory UpdateNetworkException.formatException() = FormatException;

  const factory UpdateNetworkException.unableToProcess() = UnableToProcess;

  const factory UpdateNetworkException.defaultError(String error) =
      DefaultError;

  const factory UpdateNetworkException.unexpectedError() = UnexpectedError;

  const factory UpdateNetworkException.tooManyRequests(Response? response) =
      TooManyRequests;

  static UpdateNetworkException handleResponse(int statusCode,
      [Response? response]) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return UpdateNetworkException.unauthorizedRequest(response);
      case 404:
        return UpdateNetworkException.notFound(response, 'Not found');
      case 429:
        return UpdateNetworkException.tooManyRequests(response);
      case 409:
        return UpdateNetworkException.conflict(response);
      case 408:
        return UpdateNetworkException.requestTimeout(response);
      case 500:
        return UpdateNetworkException.internalServerError(response);
      case 503:
        return UpdateNetworkException.serviceUnavailable(response);
      default:
        var responseCode = statusCode;
        return UpdateNetworkException.defaultError(
          'Received invalid status code: $responseCode',
        );
    }
  }

  static UpdateNetworkException getDioException(error) {
    if (error is Exception) {
      try {
        UpdateNetworkException networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions =
                  UpdateNetworkException.requestCancelled(error.response);
              break;
            case DioErrorType.connectTimeout:
              networkExceptions =
                  UpdateNetworkException.requestTimeout(error.response);
              break;
            case DioErrorType.other:
              networkExceptions =
                  const UpdateNetworkException.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions =
                  UpdateNetworkException.sendTimeout(error.response);
              break;
            case DioErrorType.response:
              networkExceptions = UpdateNetworkException.handleResponse(
                  error.response!.statusCode!, error.response!);
              break;
            case DioErrorType.sendTimeout:
              networkExceptions =
                  UpdateNetworkException.sendTimeout(error.response);
              break;
          }
        } else if (error is SocketException) {
          networkExceptions =
              const UpdateNetworkException.noInternetConnection();
        } else {
          networkExceptions = const UpdateNetworkException.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (e) {
        // Helper.printError(e.toString());
        return const UpdateNetworkException.formatException();
      } catch (_) {
        return const UpdateNetworkException.unexpectedError();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const UpdateNetworkException.unableToProcess();
      } else {
        return const UpdateNetworkException.unexpectedError();
      }
    }
  }

  static String getErrorMessage(UpdateNetworkException networkExceptions,
      {Response? response}) {
    try {
      var errorMessage = '';
      final serverMessage = (response != null && response.data != null)
          ? response.data['errors'][0]['detail'].toString()
          : '';
      networkExceptions.when((response) {}, notImplemented: (response) {
        errorMessage = 'Not Implemented';
      }, requestCancelled: (response) {
        errorMessage = 'Request Cancelled';
      }, internalServerError: (response) {
        errorMessage = 'Internal Server Error';
      }, notFound: (response, String reason) {
        errorMessage = reason;
      }, serviceUnavailable: (response) {
        errorMessage = 'Service unavailable';
      }, methodNotAllowed: (response) {
        errorMessage = 'Method Allowed';
      }, badRequest: (response) {
        errorMessage = 'Bad request';
      }, unauthorizedRequest: (response) {
        errorMessage = 'Unauthorized request';
      }, unexpectedError: () {
        errorMessage = 'Unexpected error occurred';
      }, requestTimeout: (response) {
        errorMessage = 'Connection request timeout';
      }, noInternetConnection: () {
        errorMessage = 'No internet connection';
      }, conflict: (response) {
        errorMessage = 'Error due to a conflict';
      }, sendTimeout: (response) {
        errorMessage = 'Send timeout in connection with API server';
      }, unableToProcess: () {
        errorMessage = 'Unable to process the data';
      }, defaultError: (String error) {
        errorMessage = error;
      }, formatException: () {
        errorMessage = 'Unexpected error occurred';
      }, notAcceptable: (response) {
        errorMessage = 'Not acceptable';
      }, tooManyRequests: (response) {
        errorMessage = 'Too many requests in a given amount of time ';
      });
      return (serverMessage.isNotEmpty) ? serverMessage : errorMessage;
    } catch (e) {
      return e.toString();
    }
  }
}
