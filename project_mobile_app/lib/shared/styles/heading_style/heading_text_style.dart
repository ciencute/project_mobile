import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/common.dart';

class TextHeading1 extends Text {
  static const TextStyle defaultStyle = TextStyle(
      fontSize: CommonConstants.extraLargeText,
      color: AppColors.primaryTextColorLight,
      fontFamily: CommonConstants.mulish_semiBold,
      fontWeight: FontWeight.w600,
      height: 1.5,
      letterSpacing: -0.01);

  static TextStyle getTextStyle(
      Color? color, TextStyle? style, TextStyle defaultStyle) {
    TextStyle mergedStyle;
    final clonedStyle = defaultStyle.copyWith();
    mergedStyle = style != null ? clonedStyle.merge(style) : clonedStyle;
    if (color != null) {
      mergedStyle = mergedStyle.copyWith(color: color);
    }
    return mergedStyle;
  }

  TextHeading1(
    String? data, {
    TextStyle? style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? overflow,
    int? maxLines,
  }) : super(
          data ?? '',
          style: getTextStyle(color, style, defaultStyle),
          overflow: overflow,
          textAlign: textAlign,
          maxLines: maxLines,
        );
}

class TextHeading2 extends TextHeading1 {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: CommonConstants.mulish_bold,
      fontSize: CommonConstants.largeText,
      color: AppColors.primaryTextColorLight,
      fontWeight: FontWeight.w700,
      height: 1.5,
      letterSpacing: -0.01);
  TextHeading2(
    String? data, {
    TextStyle style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? textOverflow,
  }) : super(
          data,
          style: TextHeading1.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          overflow: textOverflow,
        );
}

class TextHeading3 extends TextHeading1 {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: CommonConstants.mulish_bold,
      fontSize: CommonConstants.mediumText,
      color: AppColors.primaryTextColorLight,
      fontWeight: FontWeight.w700,
      height: 1.5,
      letterSpacing: -0.01);
  TextHeading3(
    String? data, {
    TextStyle? style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? textOverflow,
    int? maxLines,
  }) : super(
          data,
          style: TextHeading1.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          overflow: textOverflow,
          maxLines: maxLines,
        );
}

class TextHeading4 extends TextHeading1 {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: CommonConstants.mulish_semiBold,
      fontSize: CommonConstants.mediumText,
      color: AppColors.primaryTextColorLight,
      fontWeight: FontWeight.w600,
      height: 1.5,
      letterSpacing: -0.01);
  TextHeading4(String? data,
      {TextStyle style = defaultStyle,
      color,
      textAlign = TextAlign.left,
      int? maxLines,
      TextOverflow? overflow})
      : super(
          data,
          style: TextHeading1.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        );
}

class TextHeading5 extends TextHeading1 {
  static const TextStyle defaultStyle = TextStyle(
    fontFamily: CommonConstants.mulish_bold,
    fontSize: CommonConstants.smallText,
    color: AppColors.primaryTextColorLight,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: -0.01,
  );
  TextHeading5(String? data,
      {TextStyle style = defaultStyle,
      color,
      fontWeight,
      textAlign = TextAlign.left,
      int? maxLines})
      : super(data,
            style: TextHeading1.getTextStyle(color, style, defaultStyle),
            textAlign: textAlign,
            maxLines: maxLines);
}
