import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'connectivity_status.dart';

export 'connectivity_status.dart';

abstract class ConnectivityServiceInterface
    extends BaseConnectivityServiceInterface {
  ConnectivityServiceInterface() : super();

  @protected
  final connected = BehaviorSubject<bool>();
  @protected
  final connectivityChanged = BehaviorSubject<ConnectivityStatus>();

  @override
  @mustCallSuper
  void dispose() {
    if (connected.isClosed == false) {
      connected.close();
    }
    if (connectivityChanged.isClosed == false) {
      connectivityChanged.close();
    }
  }
}

abstract class BaseConnectivityServiceInterface {
  const BaseConnectivityServiceInterface();

  ValueStream<bool> get isConnected;

  ValueStream<ConnectivityStatus> get onConnectivityChanged;

  Future<bool> checkConnection();

  Future<ConnectivityStatus> checkConnectivity();

  void dispose();
}
