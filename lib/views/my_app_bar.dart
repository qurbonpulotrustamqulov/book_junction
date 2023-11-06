
import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:book_junction/services/constants/icons.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:flutter/material.dart';

abstract class CustomAppBar{
  static PreferredSizeWidget myAppBar = AppBar(
    leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 12),
        child: RichText(
          text: const TextSpan(
              text: CustomStrings.homePageFirstHeaderText,
              style: TextStyle(
                  fontFamily: CustomFonts.playfairDisplay,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.black),
              children: <TextSpan>[
                TextSpan(
                    text: CustomStrings.homePageSecondHeaderText,
                    style: TextStyle(color: CustomColors.pink))
              ]),
        )),
    leadingWidth: 170,
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 23),
        child: Image(
          image: CustomIcons.notification,
          width: 28,
        ),
      )
    ],
  );
}
