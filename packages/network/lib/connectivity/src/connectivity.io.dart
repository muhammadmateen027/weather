import 'dart:io' show Platform;

import 'package:rxdart/rxdart.dart';

import 'core/connectivity_service.common.dart' as common;
import 'core/connectivity_service.interface.dart';

class Connectivity implements BaseConnectivityServiceInterface {
  factory Connectivity() {
    if (_singleton == null) {
      if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
        _singleton = Connectivity._(common.ConnectivityService());
      }
    }

    return _singleton!;
  }

  const Connectivity._(this._connectivityService);

  static Connectivity? _singleton;

  final ConnectivityServiceInterface _connectivityService;

  @override
  ValueStream<bool> get isConnected => _connectivityService.isConnected;

  @override
  ValueStream<ConnectivityStatus> get onConnectivityChanged =>
      _connectivityService.onConnectivityChanged;

  @override
  Future<bool> checkConnection() => _connectivityService.checkConnection();

  @override
  Future<ConnectivityStatus> checkConnectivity() =>
      _connectivityService.checkConnectivity();

  @override
  void dispose() => _connectivityService.dispose();
}
