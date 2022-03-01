import 'package:flutter/material.dart';

import '../colors.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: AppColors.darkBlue,
  textTheme: ThemeData.dark().textTheme.copyWith(
        headline1: ThemeData.dark().textTheme.headline1?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: AppColors.darkBlue,
            ),
        headline2: ThemeData.dark().textTheme.headline2?.copyWith(
              fontSize: 28,
              color: AppColors.darkBlue,
            ),
        headline3: ThemeData.dark().textTheme.headline3?.copyWith(
              fontSize: 24,
              color: AppColors.darkBlue,
            ),
        headline4: ThemeData.dark().textTheme.headline4?.copyWith(
              fontSize: 22,
              color: AppColors.darkBlue,
            ),
        headline5: ThemeData.dark().textTheme.headline5?.copyWith(
              fontSize: 20,
              color: AppColors.darkBlue,
            ),
        headline6: ThemeData.dark().textTheme.headline6?.copyWith(
              fontSize: 18,
              color: AppColors.darkBlue,
            ),
        subtitle1: ThemeData.dark().textTheme.subtitle1?.copyWith(
              color: AppColors.darkBlue,
            ),
        subtitle2: ThemeData.dark().textTheme.subtitle2?.copyWith(
              color: AppColors.darkBlue,
            ),
        overline: ThemeData.dark().textTheme.overline?.copyWith(
              color: AppColors.darkBlue,
            ),
        bodyText1: ThemeData.dark().textTheme.bodyText1?.copyWith(
              color: AppColors.darkBlue,
            ),
        bodyText2: ThemeData.dark().textTheme.bodyText2?.copyWith(
              color: AppColors.darkBlue,
            ),
        button: ThemeData.dark().textTheme.button?.copyWith(
              color: AppColors.darkBlue,
            ),
        caption: ThemeData.dark().textTheme.caption?.copyWith(
              color: AppColors.darkBlue.withOpacity(0.8),
            ),
      ),
);
