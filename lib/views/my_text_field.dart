import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:book_junction/services/constants/icons.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: SizedBox(
        width: x,
        height: 60,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomColors.whiteGrey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
              borderSide: BorderSide.none,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.all(20),
              child: Image(
                image: CustomIcons.search,
                fit: BoxFit.fitWidth,
              ),
            ),
            prefixStyle: const TextStyle(
              color: CustomColors.black,
            ),
            hintText: CustomStrings.searchForBooksHintText,
            hintStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: CustomFonts.inter,
              color: CustomColors.lightBlack,
            ),
            suffixIcon: const Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: CustomIcons.microphone,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
