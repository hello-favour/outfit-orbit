/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Metropolis-Bold.ttf
  String get metropolisBold => 'assets/fonts/Metropolis-Bold.ttf';

  /// File path: assets/fonts/Metropolis-Medium.ttf
  String get metropolisMedium => 'assets/fonts/Metropolis-Medium.ttf';

  /// File path: assets/fonts/Metropolis-Regular.ttf
  String get metropolisRegular => 'assets/fonts/Metropolis-Regular.ttf';

  /// File path: assets/fonts/Metropolis-SemiBold.ttf
  String get metropolisSemiBold => 'assets/fonts/Metropolis-SemiBold.ttf';

  /// List of all assets
  List<String> get values =>
      [metropolisBold, metropolisMedium, metropolisRegular, metropolisSemiBold];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow.svg
  String get arrow => 'assets/icons/arrow.svg';

  /// File path: assets/icons/bag.svg
  String get bag => 'assets/icons/bag.svg';

  /// File path: assets/icons/camera.svg
  String get camera => 'assets/icons/camera.svg';

  /// File path: assets/icons/facebook.svg
  String get facebook => 'assets/icons/facebook.svg';

  /// File path: assets/icons/favorite.svg
  String get favorite => 'assets/icons/favorite.svg';

  /// File path: assets/icons/flash.svg
  String get flash => 'assets/icons/flash.svg';

  /// File path: assets/icons/google.svg
  String get google => 'assets/icons/google.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/left.svg
  String get left => 'assets/icons/left.svg';

  /// File path: assets/icons/profile.svg
  String get profile => 'assets/icons/profile.svg';

  /// File path: assets/icons/sefie.svg
  String get sefie => 'assets/icons/sefie.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// File path: assets/icons/shop.svg
  String get shop => 'assets/icons/shop.svg';

  /// List of all assets
  List<String> get values => [
        arrow,
        bag,
        camera,
        facebook,
        favorite,
        flash,
        google,
        home,
        left,
        profile,
        sefie,
        share,
        shop
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Image2.png
  AssetGenImage get image2 => const AssetGenImage('assets/images/Image2.png');

  /// File path: assets/images/cloth.png
  AssetGenImage get cloth => const AssetGenImage('assets/images/cloth.png');

  /// File path: assets/images/image.png
  AssetGenImage get image => const AssetGenImage('assets/images/image.png');

  /// File path: assets/images/image1.png
  AssetGenImage get image1 => const AssetGenImage('assets/images/image1.png');

  /// List of all assets
  List<AssetGenImage> get values => [image2, cloth, image, image1];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
