import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeStyles {
  static TextStyle get redItalicBold18 => GoogleFonts.roboto(
    fontSize: 18,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w800,
    color: AppColor.red,
  );

  static TextStyle get commonRobotoTheme => GoogleFonts.roboto(
    fontSize: 14,
    color: AppColor.white,
  );

  static TextStyle whiteBold24 = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColor.white,
  );

  static  TextStyle get greyBold24 => GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColor.grey,
  );

  static  TextStyle get blackBold16 => GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColor.black,
  );

  static  TextStyle get blackTheme16 => GoogleFonts.roboto(
    fontSize: 16,
    color: AppColor.black,
  );

  static  TextStyle get whiteTheme16 => GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColor.white,
  );

  static  TextStyle get blackTheme20 => GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: AppColor.black,
  );

  static TextStyle get blueItalic20 => GoogleFonts.roboto(
    fontSize: 20,
    fontStyle: FontStyle.italic,
    color: AppColor.blue,
  );
  
  static TextStyle copyWith({
    required TextStyle baseStyle,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return baseStyle.copyWith(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }
}
