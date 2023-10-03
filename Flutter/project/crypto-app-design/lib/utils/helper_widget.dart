import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelperWidget {
  static vGap(double height) {
    return SizedBox(
      height: height,
    );
  }

  static hGap(double width) {
    return SizedBox(
      width: width,
    );
  }

  static boldText({color, fontSize, fontWeight}) {
    return TextStyle(
        color: color ?? Colors.white,
        fontSize: fontSize ?? 15.0,
        fontWeight: fontWeight ?? FontWeight.w700);
  }

  static normalText({color, fontSize}) {
    return TextStyle(color: color ?? Colors.white, fontSize: fontSize ?? 15.0);
  }
}
