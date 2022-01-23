import 'package:flutter/material.dart';
import '../constants/colors.dart';

import 'font_family.dart';
import 'font_size_style.dart';

class BodyText extends Text {
  static const TextStyle defaultStyle = TextStyle(
      fontSize: AppDimensions.textFontSizeM,
      color: AppColors.primaryTextColorLight,
      fontFamily: AppFontFamily.fontFamily,
      height: 1.5,
      letterSpacing: -0.01);

  static TextStyle getTextStyle(
      Color? color, TextStyle? style, TextStyle defaultStyle) {
    TextStyle mergedStyle;
    final TextStyle clonedStyle = defaultStyle.copyWith();
    mergedStyle = style != null ? clonedStyle.merge(style) : clonedStyle;
    if (color != null) {
      mergedStyle = mergedStyle.copyWith(color: color);
    }
    return mergedStyle;
  }

  BodyText(
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

class BodySText extends BodyText {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: AppFontFamily.fontFamily,
      fontSize: AppDimensions.textFontSizeS,
      color: AppColors.primaryTextColorLight,
      height: 1.5,
      letterSpacing: -0.01);
  BodySText(
    String? data, {
    TextStyle style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? textOverflow,
  }) : super(
          data,
          style: BodyText.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          overflow: textOverflow,
        );
}

class BodyMText extends BodyText {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: AppFontFamily.fontFamily,
      fontSize: AppDimensions.textFontSizeM,
      color: AppColors.primaryTextColorLight,
      height: 1.5,
      letterSpacing: -0.01);
  BodyMText(
    String? data, {
    TextStyle? style = defaultStyle,
    color,
    textAlign = TextAlign.left,
    TextOverflow? textOverflow,
    int? maxLines,
  }) : super(
          data,
          style: BodyText.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          overflow: textOverflow,
          maxLines: maxLines,
        );
}

class BodyLText extends BodyText {
  static const TextStyle defaultStyle = TextStyle(
      fontFamily: AppFontFamily.fontFamily,
      fontSize: AppDimensions.textFontSizeL,
      color: AppColors.primaryTextColorLight,
      height: 1.5,
      letterSpacing: -0.01);
  BodyLText(String? data,
      {TextStyle style = defaultStyle,
      color,
      textAlign = TextAlign.left,
      int? maxLines,
      TextOverflow? overflow})
      : super(
          data,
          style: BodyText.getTextStyle(color, style, defaultStyle),
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        );
}

class BodyXLText extends BodyText {
  static const TextStyle defaultStyle = TextStyle(
    fontFamily: AppFontFamily.fontFamily,
    fontSize: AppDimensions.textFontSizeXL,
    color: AppColors.primaryTextColorLight,
    height: 1.5,
    letterSpacing: -0.01,
  );
  BodyXLText(String? data,
      {TextStyle style = defaultStyle,
      color,
      textAlign = TextAlign.left,
      int? maxLines})
      : super(data,
            style: BodyText.getTextStyle(color, style, defaultStyle),
            textAlign: textAlign,
            maxLines: maxLines);
}
