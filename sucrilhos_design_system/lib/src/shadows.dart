import 'package:flutter/material.dart';

abstract class AppShadows {
  AppShadows._();

  static List<BoxShadow> defaultShadow(ThemeData theme) {
    return [
      BoxShadow(
        color: theme.primaryColor.withOpacity(0.5),
        offset: const Offset(2, 3),
        spreadRadius: 1.5,
      ),
    ];
  }
}
