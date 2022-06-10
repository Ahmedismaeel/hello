import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 0.00;
  static double screenHeight = 0.00;
  static double defaultSize = 0.00;
  static Orientation orientation = _mediaQueryData.orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double width(double inputHeight) {
  double screenWidth = SizeConfig.screenWidth;

  return (inputHeight / 375.0) * screenWidth;
}

double height(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  return (inputWidth / 375.0) * screenWidth;
}
