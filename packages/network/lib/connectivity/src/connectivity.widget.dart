import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../network_connectivity.dart';

typedef ConnectivityWidgetBuilder = Widget Function(
  BuildContext context,
  bool? isConnected,
  ConnectivityStatus? status,
);

class ConnectivityBuilder extends StatelessWidget {
  final Widget? child;
  final Decoration? decoration;
  final Color? color;
  final String? message;
  final TextStyle? messageStyle;
  final double? height;
  final PositionOnScreen positionOnScreen;
  final Duration? duration;
  final bool disableInteraction;
  final Widget? disableWidget;
  final Widget? offlineWidget;
  final bool hasShowOffline;

  ConnectivityBuilder(
      {Key? key,
      required this.builder,
      this.child,
      this.decoration,
      this.color,
      this.message,
      this.messageStyle,
      this.height,
      this.positionOnScreen = PositionOnScreen.BOTTOM,
      this.duration,
      this.disableInteraction = true,
      this.disableWidget,
      this.offlineWidget,
      this.hasShowOffline = true})
      : _connectivity = Connectivity(),
        assert(
            color == null || decoration == null,
            'Cannot provide both a color and a decoration\n'
            'The color argument is just a shorthand '
            'for "decoration: BoxDecoration(color: color)".'),
        super(key: key);

  final Connectivity _connectivity;

  final ConnectivityWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    var _height = height ?? defaultHeight;

    return StreamBuilder<bool>(
      stream: _connectivity.isConnected,
      initialData: _connectivity.isConnected.valueOrNull,
      builder: (context, isConnected) {
        return StreamBuilder<ConnectivityStatus>(
          stream: _connectivity.onConnectivityChanged,
          builder: (context, connectivityStatus) {
            final isOffline =
                (isConnected.hasData && isConnected.data == false);
            final Widget offlineWidget = AnimatedPositioned(
              top: positionOnScreen.top(_height, isOffline),
              bottom: positionOnScreen.bottom(_height, isOffline),
              duration: duration ?? const Duration(milliseconds: 300),
              child: AnimatedContainer(
                height: _height,
                width: MediaQuery.of(context).size.width,
                decoration: decoration ??
                    BoxDecoration(color: color ?? Colors.red.shade500),
                duration: duration ?? const Duration(milliseconds: 300),
                child: Center(
                  child: Text(
                    message ?? disconnectedMessage,
                    style: messageStyle ?? defaultMessageStyle,
                  ),
                ),
              ),
            );
            return AbsorbPointer(
              absorbing: (disableInteraction && isOffline),
              child: Stack(
                children: [
                  builder(context, isConnected.data, connectivityStatus.data),
                  if (disableInteraction && isOffline)
                    if (disableWidget != null) disableWidget!,
                  if (hasShowOffline) offlineWidget,
                ],
              ),
            );
          },
        );
      },
    );
  }
}
