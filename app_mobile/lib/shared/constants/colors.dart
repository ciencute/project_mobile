import 'package:flutter/material.dart';

class AppColors {
  AppColors();
  static const List<Color> primaryColorLoadingIndicator = [
    Color(0xFFF47458),
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  static const Color defaultHeaderOSColorLight =
      Color(0xFF45C152); // light green
  static const Color primaryColorLoading = Color(0xff019FDC);
  static const Color primaryColorLight = Color(0xFF09090F); // dark green
  static const Color accentColorLight = Color(0xFFF47458); // orange
  static const Color dividerColorLight = Color(0xFFF0F0F0); // grey
  static const Color primaryTextColorLight = Color(0xFFFFFFFF); // white
  static const Color iconColorLight = Color(0xFFFFFFFF); // white
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
  static const Color coloRed = Color(0xFFEE0707); // red
  static const Color cursorColorLight = Color(0xFF000000); // black
  static const Color secondBackgroundColorLight = Color(0xFFFFFFFF);
  static const Color thirdBackgroundColorLight = Color(0xFF019749); // white
  static const Color shadowColorLight = Color(0x42000000); // black26
  static const Color contractInfoColor = Color(0xff1199E5);
  static const Color borderTextFieldColor = Color(0xffEEEEEE);
  static const Color colorLight = Color(0xffFFFFFF);
  static const Color colorDark = Color(0xff000000);
  static const Color colorYellow = Color(0xffFFCC09);
  static const Color gradient1BackgroundColor = Color(0xFF141e30);
  static const Color gradient2BackgroundColor = Color(0xFF243b55);
  static const Color homePageBackground = Color(0xFFfbfcff);
  static const Color gradientFirst = Color(0xff0f17ad);
  static const Color gradientSecond = Color(0xFF6985e8);
  static const Color homePageTitle = Color(0xFF302f51);
  static const Color homePageSubtitle = Color(0xFF414160);
  static const Color homePageDetail = Color(0xFF6588f4);
  static const Color homePageIcons = Color(0xFF3b3c5c);
  static const Color homePageContainerTextSmall = Color(0xFFf4f5fd);
  static const Color homePageContainerTextBig = Color(0xFFffffff);
  static const Color homePagePlanColor = Color(0xFFa2a2b1);
  static const Color secondPageTopIconColor = Color(0xFFb7bce8);
  static const Color secondPageTitleColor = Color(0xFFfefeff);
  static const Color secondPageContainerGradient1stColor = Color(0xFF5564d8);
  static const Color secondPageContainerGradient2ndColor = Color(0xFF6279dc);
  static const Color secondPageIconColor = Color(0xFFfafafe);
  static const Color loopColor = Color(0xFF6d8dea);
  static const Color setsColor = Color(0xFF9999a9);
  static const Color circuitsColor = Color(0xFF2f2f51);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
