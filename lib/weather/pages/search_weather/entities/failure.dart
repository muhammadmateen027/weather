import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([this.properties = const <dynamic>[]]);
  final List properties;
  @override
  List<Object> get props => [properties];
}

class ServerFailure extends Failure {
  ServerFailure({this.message = ''}) : super(<dynamic>[message]);
  final String message;
}

class CacheFailure extends Failure {}

class InvalidInputFailure extends Failure {}
