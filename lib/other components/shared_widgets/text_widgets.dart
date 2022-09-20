import 'package:flutter/material.dart';

//fontSize
const double kfsLarger = 30.0;
const double kfsHeadline = 24.0;
const double kfsSubhead = 20.0;
const double kfsTitle = 18.0;
const double kfsSubtitle = 16.0;
const double kfsBody = 14.0;
const double kfsCaption = 12.0;

class TextStyles {
  static body2({Color? color}) => TextStyle(
      fontSize: kfsBody, letterSpacing: 0.5, color: color ?? Colors.black);

  static title({Color? color, double? fontsize}) => TextStyle(
      fontSize: fontsize ,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      color: color ?? Colors.black);

  static subTitle({Color? color}) =>
      TextStyle(fontSize: kfsSubtitle, color: color ?? Colors.black);

  static caption({Color? color}) =>
      TextStyle(fontSize: kfsCaption, color: color ?? Colors.black);

  static headLine({Color? color}) => TextStyle(
      fontSize: kfsHeadline,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      color: color ?? Colors.black);

  static subHead({Color? color}) => TextStyle(
      fontSize: kfsSubhead,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      color: color ?? Colors.black);

  static buttonTitle({Color? color}) => TextStyle(
      fontSize: kfsTitle, letterSpacing: 0.5, color: color ?? Colors.black);
}