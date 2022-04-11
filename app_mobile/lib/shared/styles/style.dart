import 'package:flutter/material.dart';
import 'package:get/get.dart';


/// Define color at theme_data.dart
class TextStyleApp {
  static const String appFont = 'Mulish';

  TextStyle versionTextStyle() {
    return Get.theme.textTheme.headline5!;
  }

  TextStyle textEnableButtonStyle() {
    /// headline2 Color: secondTextColor -> White
    return TextStyle(
      color: Get.theme.textTheme.headline2!.color,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textAppBarColorStyle() {
    /// headline2 Color: secondTextColor -> White
    return TextStyle(
      color: Get.theme.textTheme.headline2!.color,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

// style app



  TextStyle textTitle() {
    return const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular',
        color: Color(0xff333333));
  }

  TextStyle text245000W() {
    return const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular',
        color: Color(0xffffffff));
  }
    TextStyle text247000W() {
    return const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular',
        color: Color(0xffffffff));
  }

  TextStyle text1() {
    return const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular',
        color: Color(0xff333333));
  }

  TextStyle textPriceRed() {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Color(0xfff75555),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text18700Red() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Color(0xffFE3A30),
      fontFamily: 'Mulish-Regular',
    );
  }
    TextStyle text20600Red() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Color(0xffFE3A30),
      fontFamily: 'Mulish-Regular',
    );
  }
      TextStyle text20500B() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Color(0xff333333),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text14BBlack() {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Color(0xff333333),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text14700B() {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Color(0xff333333),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text12600B() {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color(0xff333333),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text13600O() {
    return const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: Color(0xffFF871C),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text16BWhite() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Color(0xffffffff),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text16BGreen() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Color(0xff019748),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text18BBlack() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Color(0xff333333),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text3() {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: Color(0xff333333),
      fontFamily: 'Mulish-Regular',
    );
  }

  TextStyle text13400G2() {
    return const TextStyle(
        fontSize: 13,
        color: Color(0xff666666),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text13400B() {
    return const TextStyle(
        fontSize: 13,
        color: Color(0xff333333),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text13400G3() {
    return const TextStyle(
        fontSize: 13,
        color: Color(0xff888888),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text14500B() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff333333),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text14500Black() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff000000),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text14500G2() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff666666),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
      TextStyle text14500G3() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff888888),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text14500Blue() {
    return const TextStyle(
        fontSize: 14,
        color: Colors.blue,
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text14600B() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff333333),
        fontWeight: FontWeight.bold,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text14600O() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xffFF871C),
        fontWeight: FontWeight.bold,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text14w600B() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff333333),
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text12500B() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff333333),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
     TextStyle text12500Blue() {
    return const TextStyle(
        fontSize: 12,
        color: Colors.blue,
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle titleAppBar() {
    return const TextStyle(
        fontSize: 16,
        color: Color(0xff333333),
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text16400G6() {
    return const TextStyle(
        fontSize: 16,
        color: Color(0xff666666),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
  
  TextStyle text16700Black() {
    return const TextStyle(
        fontSize: 16,
        color: Color(0xff000000),
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text16600B() {
    return const TextStyle(
        fontSize: 16,
        color: Color(0xff333333),
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text18500W() {
    return const TextStyle(
        fontSize: 18,
        color: Color(0xffFFFFFF),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text13600Black() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff000000),
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text13600B() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff333333),
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text13500B() {
    return const TextStyle(
        fontSize: 13,
        color: Color(0xff333333),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text12400B() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff333333),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text13500G2() {
    return const TextStyle(
        fontSize: 13,
        color: Color(0xff666666),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text12500G2() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff666666),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text12500G3() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff888888),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text10500G3() {
    return const TextStyle(
        fontSize: 10,
        color: Color(0xff888888),
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }
  TextStyle text124000G3() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff888888),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text124000B() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff333333),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text126000B() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff333333),
        fontWeight: FontWeight.w300,
        fontFamily: 'Mulish-Regular');
  }
      TextStyle text126000G3() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xff888888),
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }
        TextStyle text126000R() {
    return const TextStyle(
        fontSize: 12,
        color: Color(0xffFE3A30),
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }
          TextStyle text147000R() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xffFE3A30),
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text144000G3() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff888888),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
      TextStyle text146000G3() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff888888),
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }
      TextStyle text144000G2() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff666666),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
      TextStyle text144000B() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff333333),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
        TextStyle text146000B() {
    return const TextStyle(
        fontSize: 14,
        color: Color(0xff333333),
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text12400Blue() {
    return const TextStyle(
        color: Colors.blue,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text14400Blue() {
    return const TextStyle(
        color: Colors.blue,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text13500Blue() {
    return const TextStyle(
        color: Colors.blue,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text4White() {
    return const TextStyle(
        color: Color(0xffffffff),
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle textSmall() {
    return const TextStyle(
        color: Color(0xff333333),
        fontSize: 10,
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle textSmallRed() {
    return const TextStyle(
        color: Color(0xffF75555),
        fontSize: 10,
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text10600W() {
    return const TextStyle(
        color: Color(0xffffffff),
        fontSize: 10,
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text10700W() {
    return const TextStyle(
        color: Color(0xffffffff),
        fontSize: 10,
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text12700W() {
    return const TextStyle(
        color: Color(0xffffffff),
        fontSize: 12,
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish-Regular');
  }

  TextStyle text10400B() {
    return const TextStyle(
        color: Color(0xff333333),
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish-Regular');
  }
    TextStyle text10600B() {
    return const TextStyle(
        color: Color(0xff333333),
        fontSize: 10,
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }
      TextStyle text10600G2() {
    return const TextStyle(
        color: Color(0xff666666),
        fontSize: 10,
        fontWeight: FontWeight.w600,
        fontFamily: 'Mulish-Regular');
  }

}