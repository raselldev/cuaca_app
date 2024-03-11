import 'package:flutter/material.dart';

class FontSize {
  late double h1;
  late double h2;
  late double h3;
  late double h4;
  late double h5;
  late double h6;
  late double subtitle1;
  late double subtitle2;
  late double body1;
  late double body2;
  late double regular;
  late double caption;
  late double overline;

  FontSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    h1 = (screenWidth / 375.0) * 96.0;
    h2 = (screenWidth / 375.0) * 60.0;
    h3 = (screenWidth / 375.0) * 48.0;
    h4 = (screenWidth / 375.0) * 34.0;
    h5 = (screenWidth / 375.0) * 24.0;
    h6 = (screenWidth / 375.0) * 20.0;
    subtitle1 = (screenWidth / 375.0) * 16.0;
    subtitle2 = (screenWidth / 375.0) * 14.0;
    body1 = (screenWidth / 375.0) * 16.0;
    body2 = (screenWidth / 375.0) * 14.0;
    regular = (screenWidth / 375.0) * 14.0;
    caption = (screenWidth / 375.0) * 12.0;
    overline = (screenWidth / 375.0) * 10.0;
  }
}
