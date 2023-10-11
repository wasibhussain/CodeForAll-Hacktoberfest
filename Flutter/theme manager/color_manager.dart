import 'package:flutter/material.dart';

class ColorManager {
  static final Color cardColor1 = HexColor.fromHex('#D1FDD1'); //green
  static final Color cardColor2 = HexColor.fromHex('#C7EFC2'); //dark green
  static final Color cardColor3 = HexColor.fromHex('#E9FFE9'); //light green
  static final Color cardColor4 = HexColor.fromHex('#F04F00'); //light orange

  static final Color primary = HexColor.fromHex('#F04F00');
  static final Color secondary = HexColor.fromHex('#57AE57');
  static final Color darkSecondary = HexColor.fromHex('#0E6205');
  static final Color settings = HexColor.fromHex("#214E78");
  static final Color white = HexColor.fromHex("#FFFFFF");
  static final Color disabled = HexColor.fromHex("#686868");
  static final Color required = HexColor.fromHex("#000000");
  static final Color lightPink = HexColor.fromHex("#FED6C3");
  static final Color lightGreen = HexColor.fromHex("#EAF8EA");
  static final Color lightGray = HexColor.fromHex("#F5F5F5");
  static final Color activeTab = HexColor.fromHex("#A5D6FD");
  static final Color offWhite = HexColor.fromHex("#F9FAF9");
  static final Color nonActiveText = HexColor.fromHex("#B8E1B8"); //light green
  static const Color nonActiveTab = Color.fromRGBO(80, 177, 255, 0.95);
}

extension HexColor on Color {
  static fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', "");
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
