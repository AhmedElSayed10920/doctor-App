import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: AppFontFamily.fontFamily,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getRegularTextStyle(fontSize, color) {
  return _getTextStyle(fontSize, AppFontWeight.regular, color);
}

TextStyle getMediumTextStyle(fontSize, color) {
  return _getTextStyle(fontSize, AppFontWeight.medium, color);
}

TextStyle getSemiBoldTextStyle(fontSize, color) {
  return _getTextStyle(fontSize, AppFontWeight.semiBold, color);
}


TextStyle getBoldTextStyle(fontSize, color) {
  return _getTextStyle(fontSize, AppFontWeight.bold, color);
}
