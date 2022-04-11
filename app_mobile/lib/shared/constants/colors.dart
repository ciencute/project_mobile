import 'package:flutter/material.dart';

class AppColors {
  AppColors();
  static const Color defaultHeaderOSColorLight =
      Color(0xFF45C152); // light green
  static const Color primaryColorLight = Color(0xFF09090F); // dark green
  static const Color accentColorLight = Color(0xFFF47458); // orange
  static const Color dividerColorLight = Color(0xFFF0F0F0); // grey
  static const Color primaryTextColorLight = Color(0xFFFFFFFF); // black gray
  static const Color secondTextColorLight = Color(0xFFFFFFFF); // white
  static const Color thirdTextColorLight = Color(0xFF000000); // black
  static const Color fourthTextColorLight = Color(0xFF13862B); // green
  static const Color fifthTextColorLight = Color(0xFF888888); // gray
  static const Color sixTextColorLight = Color(0xFF4F4F4F); // gray
  static const Color sevenTextColorLight = Color(0xFF1B1B1E); // gray
  static const Color eightTextColorLight = Color(0xFF019748); // green
  static const Color niceTextColorLight = Color(0xFF444444);
  static const Color primaryHintColorLight = Color(0xFF888888); // gray
  static const Color primaryBorderColorLight = Color(0xFFF0F0F0); // gray
  static const Color primarySelectedColorLight = Color(0xFFADADAD); // gray
  static const Color primaryBackgroundColorLight = Color(0xFFF2F4F8); // gray
  static const Color disabledColorLight = Color(0xFFADADAD); // gray
  static const Color errorColorLight = Color(0xFFEE0707); // red
  static const Color cursorColorLight = Color(0xFF000000); // black
  static const Color secondBackgroundColorLight = Color(0xFFFFFFFF);
  static const Color thirdBackgroundColorLight = Color(0xFF019749); // white
  static const Color shadowColorLight = Color(0x42000000); // black26
  static const Color contractInfoColor = Color(0xff1199E5);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
