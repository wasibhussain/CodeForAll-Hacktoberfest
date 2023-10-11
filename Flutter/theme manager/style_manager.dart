import 'package:flutter/material.dart';

import 'font_manager.dart';

ButtonStyle getButtonStyle(color, verticalPadding, [horizontalPadding = 0.0]) {
  return ElevatedButton.styleFrom(
      elevation: 0,
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      backgroundColor: color,
      shape: const StadiumBorder());
}

TextStyle _getTextStyle(double fontSize, Color color,
    [FontWeight? fontWeight]) {
  return TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getRegularStyle({double fontSize = 12.0, required color}) {
  return _getTextStyle(fontSize, color);
}

TextStyle getBoldStyle({double fontSize = 12.0, required color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.bold);
}

TextStyle getExtraBoldStyle({double fontSize = 12.0, required color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.extraBold);
}

TextStyle getMediumStyle({double fontSize = 12.0, required color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.medium);
}
