/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const AssetGenImage clear = AssetGenImage('assets/clear.png');
  static const String error = 'assets/error.json';
  static const AssetGenImage hail = AssetGenImage('assets/hail.png');
  static const AssetGenImage heavyCloud =
      AssetGenImage('assets/heavy_cloud.png');
  static const AssetGenImage heavyRain = AssetGenImage('assets/heavy_rain.png');
  static const AssetGenImage icon = AssetGenImage('assets/icon.png');
  static const AssetGenImage lightCloud =
      AssetGenImage('assets/light_cloud.png');
  static const AssetGenImage lightRain = AssetGenImage('assets/light_rain.png');
  static const AssetGenImage showers = AssetGenImage('assets/showers.png');
  static const AssetGenImage sleet = AssetGenImage('assets/sleet.png');
  static const AssetGenImage snow = AssetGenImage('assets/snow.png');
  static const AssetGenImage thunderstorm =
      AssetGenImage('assets/thunderstorm.png');
  static const AssetGenImage welcome = AssetGenImage('assets/welcome.png');
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
