import 'package:flutter/material.dart';

const double defaultHeight = 40.0;
const EdgeInsetsGeometry defaultPadding = EdgeInsets.all(8.0);
const String disconnectedMessage =
    'Please connect to an active internet connection!';
const TextStyle defaultMessageStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.white,
  inherit: false,
);
enum PositionOnScreen {
  TOP,
  BOTTOM,
}

extension PositionOnScreenExtention on PositionOnScreen {
  bool get isTOP => this == PositionOnScreen.TOP;

  bool get isBOTTOM => this == PositionOnScreen.BOTTOM;

  double? top(double height, [bool isOffline = false]) {
    if (isTOP) {
      return isOffline ? 0 : (-height);
    }
  }

  double? bottom(double height, [bool isOffline = false]) {
    if (isBOTTOM) {
      return isOffline ? 0 : (-height);
    }
  }
}
