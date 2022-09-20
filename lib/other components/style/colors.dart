import 'package:flutter/material.dart';

class DardyColors{
  DardyColors._();
  static Color beige = const Color(0xFFD9D9D9);
  static Color white = const Color(0xFFFFFFFF);
  static Color green = const Color(0xFF25C896);
  static Color black = const Color(0xFF170A14);
  static Color grey = const Color(0xFF787575);
  
  static LinearGradient authenticationButton =
  const LinearGradient(begin: Alignment.center,
    end: Alignment(0.8, 1),
    colors: <Color>[
      Color(0xff50D1A8),
      Color(0xff27AA78),
    ],
    tileMode: TileMode.mirror,
    );
}