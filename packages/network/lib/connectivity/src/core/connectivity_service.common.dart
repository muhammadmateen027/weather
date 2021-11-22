import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rxdart/rxdart.dart';

import 'connectivity.mixin.dart';
import 'connectivity_service.interface.dart';

class ConnectivityService extends ConnectivityServiceInterface
    with ConnectivityMixin {
  ConnectivityService() : super() {
    void update(ConnectivityResult result) async {
      final status = ConnectivityStatus.values[result.index];
      if (connectivityChanged.valueOrNull != status) {
        connectivityChanged.add(status);
      }

      final isConnected =
          status != ConnectivityStatus.none && await checkConnection();
      if (connected.valueOrNull != isConnected) {
        connected.add(isConnected);
      }
    }

    _subscription = _connectivity.onConnectivityChanged.listen(update);
    _connectivity.checkConnectivity().then(update);
    lookupPolling();
  }

  StreamSubscription? _subscription;
  final _connectivity = Connectivity();

  @override
  ValueStream<bool> get isConnected => connected;

  @override
  Future<bool> checkConnection() async {
    final status = await hasConnection();

    if (connected.valueOrNull != status) {
      connected.add(status);
    }

    return status;
  }

  @override
  ValueStream<ConnectivityStatus> get onConnectivityChanged =>
      connectivityChanged;

  @override
  Future<ConnectivityStatus> checkConnectivity() async => ConnectivityStatus
      .values[(await _connectivity.checkConnectivity()).index];

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
  }
}
