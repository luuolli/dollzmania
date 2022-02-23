import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: AppColors.darkBlue,
  buttonTheme: ThemeData.dark().buttonTheme.copyWith(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        height: 45,
      ),
  inputDecorationTheme: ThemeData.dark().inputDecorationTheme.copyWith(),
  textTheme: ThemeData.dark().textTheme.copyWith(
        headline1: ThemeData.dark().textTheme.headline1?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: AppColors.white,
            ),
        headline2: ThemeData.dark().textTheme.headline2?.copyWith(
              fontSize: 28,
              color: AppColors.white,
            ),
        headline3: ThemeData.dark().textTheme.headline3?.copyWith(
              fontSize: 24,
              color: AppColors.white,
            ),
        headline4: ThemeData.dark().textTheme.headline4?.copyWith(
              fontSize: 22,
              color: AppColors.white,
            ),
        headline5: ThemeData.dark().textTheme.headline5?.copyWith(
              fontSize: 20,
              color: AppColors.white,
            ),
        headline6: ThemeData.dark().textTheme.headline6?.copyWith(
              fontSize: 18,
              color: AppColors.white,
            ),
        subtitle1: ThemeData.dark().textTheme.subtitle1?.copyWith(
              color: AppColors.white,
            ),
        subtitle2: ThemeData.dark().textTheme.subtitle2?.copyWith(
              color: AppColors.white,
            ),
        overline: ThemeData.dark().textTheme.overline?.copyWith(
              color: AppColors.white,
            ),
        bodyText1: ThemeData.dark().textTheme.bodyText1?.copyWith(
              color: AppColors.white,
            ),
        bodyText2: ThemeData.dark().textTheme.bodyText2?.copyWith(
              color: AppColors.white,
            ),
        button: ThemeData.dark().textTheme.button?.copyWith(
              color: AppColors.white,
            ),
        caption: ThemeData.dark().textTheme.caption?.copyWith(
              color: AppColors.white.withOpacity(0.8),
            ),
      ),
);

final CupertinoThemeData cupertinoDarkTheme = CupertinoThemeData().copyWith();
