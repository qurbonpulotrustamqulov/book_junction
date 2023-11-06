import 'package:book_junction/services/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class CustomFonts {
  /// ```static const inter = 'Inter';```
  static const inter = 'Inter';

  /// ```static const playfairDisplay = 'PlayfairDisplay';```
  static const playfairDisplay = 'PlayfairDisplay';

  /// ```style for text which are them write by font family playFair;```
  static TextStyle playfairStyle(
      {Color color = CustomColors.black,
      double size = 16,
      TextDecoration decoration = TextDecoration.none}) {
    return TextStyle(
        color: color,
        decoration: decoration,
        fontSize: size,
        fontWeight: FontWeight.w500,
        fontFamily: CustomFonts.playfairDisplay);
  }

  /// ```style for text which are them write by font family inter;```
  static TextStyle interStyle(
      {Color color = CustomColors.secondGrey,
      double fontSize = 12,
      FontWeight fonWeight = FontWeight.w500}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fonWeight,
        fontFamily: CustomFonts.inter);
  }
}
