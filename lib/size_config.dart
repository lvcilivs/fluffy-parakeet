import 'package:flutter/material.dart';

// TODO(roy): Refactor this class to be efficient.
class SizeConfig {
  SizeConfig(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenHeight / 100;
    blockSizeVertical = screenWidth / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;

    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
  }

  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;
  late double _safeAreaHorizontal;
  late double _safeAreaVertical;
  late double safeBlockHorizontal;
  late double safeBlockVertical;
}
