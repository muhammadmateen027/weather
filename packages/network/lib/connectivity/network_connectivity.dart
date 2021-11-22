export 'src/connectivity.stub.dart'
    if (dart.library.io) 'src/connectivity.io.dart';
export 'src/connectivity.widget.dart';
export 'src/core/connectivity_status.dart';
export 'src/core/constants.dart';

class ConnectivitySettings {
  ConnectivitySettings._();

  static Duration _lookupDuration = const Duration(minutes: 1);
  static String _lookupHost = 'google.com';
  static bool _enablePolling = true;

  static Duration get lookupDuration => _lookupDuration;

  static String get lookupHost => _lookupHost;

  static bool get enablePolling => _enablePolling;

  static void init({
    Duration lookupDuration = const Duration(seconds: 10),
    String lookupHost = 'google.com',
    bool enablePolling = true,
  }) {
    _lookupDuration = lookupDuration;
    _lookupHost = lookupHost;
    _enablePolling = enablePolling;
  }
}
