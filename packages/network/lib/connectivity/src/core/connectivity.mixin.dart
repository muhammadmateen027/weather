import 'dart:io' show InternetAddress, SocketException;

import '../../network_connectivity.dart';
import 'connectivity_service.interface.dart';

mixin ConnectivityMixin on ConnectivityServiceInterface {
  Future<bool> hasConnection() async {
    var hasConnection = false;

    try {
      final result =
          await InternetAddress.lookup(ConnectivitySettings.lookupHost);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      }
    } on SocketException catch (_) {}

    return hasConnection;
  }

  void lookupPolling({bool updateConnectivityStatus = false}) async {
    if (!ConnectivitySettings.enablePolling) {
      return;
    }

    await Future.delayed(ConnectivitySettings.lookupDuration);

    final hasRealConnection = await hasConnection();
    if (connected.valueOrNull != hasRealConnection) {
      connected.add(hasRealConnection);
    }
    if (updateConnectivityStatus == true) {
      connectivityChanged.add(hasRealConnection
          ? ConnectivityStatus.unknown
          : ConnectivityStatus.none);
    }

    lookupPolling();
  }
}
