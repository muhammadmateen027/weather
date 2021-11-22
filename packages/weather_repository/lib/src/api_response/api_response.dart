import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/network.dart';

part 'api_response.freezed.dart';

enum Status { LOADING, COMPLETED, ERROR, NONE }

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.completed({
    @Default(Status.COMPLETED) Status status,
    required T value,
  }) = Completed<T>;

  const factory ApiResponse.loading({
    @Default(Status.LOADING) Status status,
  }) = Loading<T>;

  const factory ApiResponse.error({
    @Default(Status.ERROR) Status status,
    required String message,
    UpdateNetworkException? networkException,
  }) = ErrorDetails<T>;
}
