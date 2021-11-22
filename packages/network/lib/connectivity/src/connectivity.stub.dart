import 'package:rxdart/rxdart.dart';

import 'core/connectivity_service.interface.dart';

class Connectivity implements BaseConnectivityServiceInterface {
  factory Connectivity() => _singleton;

  const Connectivity._();

  static const Connectivity _singleton = Connectivity._();

  @override
  ValueStream<bool> get isConnected => throw UnimplementedError();

  @override
  ValueStream<ConnectivityStatus> get onConnectivityChanged =>
      throw UnimplementedError();

  @override
  Future<bool> checkConnection() => throw UnimplementedError();

  @override
  Future<ConnectivityStatus> checkConnectivity() => throw UnimplementedError();

  @override
  void dispose() => throw UnimplementedError();
}
