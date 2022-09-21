import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//fontSize
const double kfsLarger = 30.0;
const double kfsHeadline = 24.0;
const double kfsSubhead = 20.0;
const double kfsTitle = 18.0;
const double kfsSubtitle = 16.0;
const double kfsBody = 14.0;
const double kfsCaption = 12.0;

class TextStyles {
  static body2({Color? color}) => GoogleFonts.montserrat(
      fontSize: kfsBody, letterSpacing: 0.5, color: color ?? Colors.black);

  static title({Color? color, double? fontsize}) => GoogleFonts.montserrat(
      fontSize: fontsize,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      color: color ?? Colors.black);

  static subTitle({Color? color, double? fontSize}) => GoogleFonts.montserrat(
        fontSize: fontSize ?? kfsSubtitle,
        color: color ?? Colors.black,
      );

  static caption({Color? color}) => GoogleFonts.montserrat(
      fontSize: kfsCaption, color: color ?? Colors.black);

  static headLine({Color? color, double? fontSize, FontWeight? fontWeight}) =>
      GoogleFonts.montserrat(
          fontSize: fontSize ?? kfsHeadline,
          fontWeight: fontWeight ?? FontWeight.w600,
          letterSpacing: 0.5,
          color: color ?? Colors.black);

  static subHead({Color? color}) => GoogleFonts.montserrat(
      fontSize: kfsSubhead,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      color: color ?? Colors.black);

  static buttonTitle({Color? color}) => GoogleFonts.montserrat(
      fontSize: kfsTitle, letterSpacing: 0.5, color: color ?? Colors.black);
}
