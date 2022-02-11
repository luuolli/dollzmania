import 'package:flutter/material.dart';

class AppGradients {
  static Gradient get mainGradient {
    return const LinearGradient(
      colors: [Color(0xFF00A7DC), Color(0xFF8FF7EB)],
      begin: Alignment.centerLeft,
      end: Alignment.topRight,
    );
  }
}
