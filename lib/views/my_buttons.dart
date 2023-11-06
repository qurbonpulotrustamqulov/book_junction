
import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final int i;
  final int selected;
  final void Function() onPressed;
  const MyButtons(
      {super.key,
        required this.i,
        required this.selected,
        required this.onPressed,
        required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: selected == i ? CustomColors.purple : null,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        child: Text(
          text,
          style:  TextStyle(
              color: selected == i ? CustomColors.white : CustomColors.grey,
              fontFamily: CustomFonts.inter,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
