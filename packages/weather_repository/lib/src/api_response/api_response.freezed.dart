// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

  Completed<T> completed<T>(
      {Status status = Status.COMPLETED, required T value}) {
    return Completed<T>(
      status: status,
      value: value,
    );
  }

  Loading<T> loading<T>({Status status = Status.LOADING}) {
    return Loading<T>(
      status: status,
    );
  }

  ErrorDetails<T> error<T>(
      {Status status = Status.ERROR,
      required String message,
      UpdateNetworkException? networkException}) {
    return ErrorDetails<T>(
      status: status,
      message: message,
      networkException: networkException,
    );
  }
}

/// @nodoc
const $ApiResponse = _$ApiResponseTearOff();

/// @nodoc
mixin _$ApiResponse<T> {
  Status get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Status status, T value) completed,
    required TResult Function(Status status) loading,
    required TResult Function(Status status, String message,
            UpdateNetworkException? networkException)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Status status, T value)? completed,
    TResult Function(Status status)? loading,
    TResult Function(Status status, String message,
            UpdateNetworkException? networkException)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Completed<T> value)? completed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res>;
  $Res call({Status status});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse<T> _value;
  // ignore: unused_field
  final $Res Function(ApiResponse<T>) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
abstract class $CompletedCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $CompletedCopyWith(
          Completed<T> value, $Res Function(Completed<T>) then) =
      _$CompletedCopyWithImpl<T, $Res>;
  @override
  $Res call({Status status, T value});
}

/// @nodoc
class _$CompletedCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $CompletedCopyWith<T, $Res> {
  _$CompletedCopyWithImpl(
      Completed<T> _value, $Res Function(Completed<T>) _then)
      : super(_value, (v) => _then(v as Completed<T>));

  @override
  Completed<T> get _value => super._value as Completed<T>;

  @override
  $Res call({
    Object? status = freezed,
    Object? value = freezed,
  }) {
    return _then(Completed<T>(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Completed<T> implements Completed<T> {
  const _$Completed({this.status = Status.COMPLETED, required this.value});

  @JsonKey(defaultValue: Status.COMPLETED)
  @override
  final Status status;
  @override
  final T value;

  @override
  String toString() {
    return 'ApiResponse<$T>.completed(status: $status, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Completed<T> &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $CompletedCopyWith<T, Completed<T>> get copyWith =>
      _$CompletedCopyWithImpl<T, Completed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Status status, T value) completed,
    required TResult Function(Status status) loading,
    required TResult Function(Status status, String message,
            UpdateNetworkException? networkException)
        error,
  }) {
    return completed(status, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Status status, T value)? completed,
    TResult Function(Status status)? loading,
    TResult Function(Status status, String message,
            UpdateNetworkException? networkException)?
        error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(status, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Completed<T> value)? completed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class Completed<T> implements ApiResponse<T> {
  const factory Completed({Status status, required T value}) = _$Completed<T>;

  @override
  Status get status => throw _privateConstructorUsedError;
  T get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CompletedCopyWith<T, Completed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
  @override
  $Res call({Status status});
}

/// @nodoc
class _$LoadingCopyWithImpl<T, $Res> extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(Loading<T>(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading({this.status = Status.LOADING});

  @JsonKey(defaultValue: Status.LOADING)
  @override
  final Status status;

  @override
  String toString() {
    return 'ApiResponse<$T>.loading(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading<T> &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<T, Loading<T>> get copyWith =>
      _$LoadingCopyWithImpl<T, Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Status status, T value) completed,
    required TResult Function(Status status) loading,
    required TResult Function(Status status, String message,
            UpdateNetworkException? networkException)
        error,
  }) {
    return loading(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Status status, T value)? completed,
    TResult Function(Status status)? loading,
    TResult Function(Status status, String message,
            UpdateNetworkException? networkException)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Completed<T> value)? completed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements ApiResponse<T> {
  const factory Loading({Status status}) = _$Loading<T>;

  @override
  Status get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<T, Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails<T> value, $Res Function(ErrorDetails<T>) then) =
      _$ErrorDetailsCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {Status status,
      String message,
      UpdateNetworkException? networkException});

  $UpdateNetworkExceptionCopyWith<$Res>? get networkException;
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $ErrorDetailsCopyWith<T, $Res> {
  _$ErrorDetailsCopyWithImpl(
      ErrorDetails<T> _value, $Res Function(ErrorDetails<T>) _then)
      : super(_value, (v) => _then(v as ErrorDetails<T>));

  @override
  ErrorDetails<T> get _value => super._value as ErrorDetails<T>;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? networkException = freezed,
  }) {
    return _then(ErrorDetails<T>(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      networkException: networkException == freezed
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as UpdateNetworkException?,
    ));
  }

  @override
  $UpdateNetworkExceptionCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $UpdateNetworkExceptionCopyWith<$Res>(_value.networkException!,
        (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$ErrorDetails<T> implements ErrorDetails<T> {
  const _$ErrorDetails(
      {this.status = Status.ERROR,
      required this.message,
      this.networkException});

  @JsonKey(defaultValue: Status.ERROR)
  @override
  final Status status;
  @override
  final String message;
  @override
  final UpdateNetworkException? networkException;

  @override
  String toString() {
    return 'ApiResponse<$T>.error(status: $status, message: $message, networkException: $networkException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorDetails<T> &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.networkException, networkException) ||
                const DeepCollectionEquality()
                    .equals(other.networkException, networkException)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(networkException);

  @JsonKey(ignore: true)
  @override
  $ErrorDetailsCopyWith<T, ErrorDetails<T>> get copyWith =>
      _$ErrorDetailsCopyWithImpl<T, ErrorDetails<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Status status, T value) completed,
    required TResult Function(Status status) loading,
    required TResult Function(Status status, String message,
            UpdateNetworkException? networkException)
        error,
  }) {
    return error(status, message, networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Status status, T value)? completed,
    TResult Function(Status status)? loading,
    TResult Function(Status status, String message,
            UpdateNetworkException? networkException)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status, message, networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Completed<T> value)? completed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails<T> implements ApiResponse<T> {
  const factory ErrorDetails(
      {Status status,
      required String message,
      UpdateNetworkException? networkException}) = _$ErrorDetails<T>;

  @override
  Status get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UpdateNetworkException? get networkException =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorDetailsCopyWith<T, ErrorDetails<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
