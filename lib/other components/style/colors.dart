import 'package:flutter/material.dart';

class DardyColors{
  DardyColors._();
  static Color beige = const Color(0xFFD9D9D9);
  static Color white = const Color(0xFFFFFFFF);
  static Color green = const Color(0xFF25C896);
  static Color black = const Color(0xFF170A14);
  static Color grey = const Color(0xFF787575);
  static Color brown = const Color(0xFFA18168);
  static Color midbrown = const Color(0xFFDBC2AC);
  static Color lightbrown = const Color(0xFFEFDCCD);
  static Color darkBlue = const Color(0xFF02353C);
  static Color lightGrey = const Color(0xFFF5F7FA);
  
  static LinearGradient authenticationButton =
  const LinearGradient(begin: Alignment.center,
    end: Alignment(0.8, 1),
    colors: <Color>[
      Color(0xff50D1A8),
      Color(0xff27AA78),
    ],
    tileMode: TileMode.mirror,
    );

  static LinearGradient brownLinearGradient =
  const LinearGradient(begin: Alignment.center,
    end: Alignment(0.8, 1),
    colors: <Color>[
      Color(0xffEFDCCD),
      Color(0xffDBC2AC),
    ],
    tileMode: TileMode.mirror,
  );
}