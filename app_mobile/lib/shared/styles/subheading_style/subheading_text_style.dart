import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/common.dart';

class TextSubheading1 extends Text {
  static const TextStyle defaultStyle = TextStyle(
      fontSize: CommonConstants.smallText,
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

  TextSubheading1(
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

class TextSubheading2 extends TextSubheading1 {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: CommonConstants.mulish_regular,
      fontSize: CommonConstants.mediumText,
      color: AppColors.primaryTextColorLight,
      fontWeight: FontWeight.w400,
      height: 1.5,
      letterSpacing: -0.01);
  TextSubheading2(
    String? data, {
    TextStyle style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? textOverflow,
  }) : super(
          data,
          style: TextSubheading1.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          overflow: textOverflow,
        );
}

class TextSubheading3 extends TextSubheading1 {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: CommonConstants.mulish_semiBold,
      fontSize: CommonConstants.smallText,
      color: AppColors.primaryTextColorLight,
      fontWeight: FontWeight.w600,
      height: 1.5,
      letterSpacing: -0.01);
  TextSubheading3(
    String? data, {
    TextStyle? style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? textOverflow,
    int? maxLines,
  }) : super(
          data,
          style: TextSubheading1.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          overflow: textOverflow,
          maxLines: maxLines,
        );
}
class TextSubheading4 extends TextSubheading1 {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: CommonConstants.mulish_bold,
      fontSize: CommonConstants.smallText,
      color: AppColors.primaryTextColorLight,
      fontWeight: FontWeight.w700,
      height: 1.5,
      letterSpacing: -0.01);
  TextSubheading4(
    String? data, {
    TextStyle? style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? textOverflow,
    int? maxLines,
  }) : super(
          data,
          style: TextSubheading1.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          overflow: textOverflow,
          maxLines: maxLines,
        );
}
