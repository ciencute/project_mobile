import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/common.dart';

class ThemeConfig {
  ThemeConfig();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.green,

    //  backgroundColor:  LinearGradient(colors: [Colors.blue, Colors.green]),

    colorScheme: ColorScheme.light(
      primary: AppColors.primaryColorLight,
      secondary: AppColors.primaryColorLight.withOpacity(0.4),
    ),
  );

  // static final ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark,
  //   primarySwatch: Colors.green,
  //   accentColor: Colors.purple[300],
  //   colorScheme: ColorScheme.dark(
  //     primary: Colors.green[800],
  //     secondary: Colors.green[600],
  //   ),
  // );

  // static ThemeData get lightTheme => createTheme(
  //       brightness: Brightness.light,
  //       primaryColor: AppColors.primaryColorLight,
  //       primaryBackgroundColor: AppColors.secondTextColorLight,
  //       primaryTextColor: AppColors.primaryTextColorLight,
  //       secondTextColor: AppColors.secondTextColorLight,
  //       thirdTextColor: AppColors.thirdTextColorLight,
  //       fourthTextColor: AppColors.fourthTextColorLight,
  //       fifthTextColor: AppColors.fifthTextColorLight,
  //       hintText: AppColors.primaryHintColorLight,
  //       accentColor: AppColors.accentColorLight,
  //       divider: AppColors.dividerColorLight,
  //       disabled: AppColors.disabledColorLight,
  //       shadowColor: AppColors.shadowColorLight,
  //       primaryBorderColor: AppColors.primaryBorderColorLight,
  //       error: AppColors.errorColorLight,
  //     );
}
