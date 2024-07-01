/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/all.png
  AssetGenImage get all => const AssetGenImage('assets/images/all.png');

  /// File path: assets/images/bargain.png
  AssetGenImage get bargain => const AssetGenImage('assets/images/bargain.png');

  /// File path: assets/images/coupon.png
  AssetGenImage get coupon => const AssetGenImage('assets/images/coupon.png');

  /// File path: assets/images/footprint.png
  AssetGenImage get footprint =>
      const AssetGenImage('assets/images/footprint.png');

  /// File path: assets/images/gift.png
  AssetGenImage get gift => const AssetGenImage('assets/images/gift.png');

  /// File path: assets/images/news.png
  AssetGenImage get news => const AssetGenImage('assets/images/news.png');

  /// File path: assets/images/point.png
  AssetGenImage get point => const AssetGenImage('assets/images/point.png');

  /// File path: assets/images/prize_wheel.png
  AssetGenImage get prizeWheel =>
      const AssetGenImage('assets/images/prize_wheel.png');

  /// File path: assets/images/rebate.png
  AssetGenImage get rebate => const AssetGenImage('assets/images/rebate.png');

  /// File path: assets/images/seckill.png
  AssetGenImage get seckill => const AssetGenImage('assets/images/seckill.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        all,
        bargain,
        coupon,
        footprint,
        gift,
        news,
        point,
        prizeWheel,
        rebate,
        seckill
      ];
}

class Assets {
  Assets._();

  static const String aEnv = '.env';
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
