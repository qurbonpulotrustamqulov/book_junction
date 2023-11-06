
import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:flutter/material.dart';

abstract class AppBarStyle{
  static ThemeData themeData = ThemeData(
    useMaterial3: false,
    appBarTheme: const AppBarTheme(
      backgroundColor: CustomColors.white,
      centerTitle: false,
      elevation: 0,
      toolbarTextStyle: TextStyle(
          fontFamily: CustomFonts.playfairDisplay,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: CustomColors.black),
      titleTextStyle:TextStyle(
        fontFamily: CustomFonts.playfairDisplay,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: CustomColors.black),
    ),
  );
}
