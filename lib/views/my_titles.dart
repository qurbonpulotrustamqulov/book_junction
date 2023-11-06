
import 'package:book_junction/services/constants/fonts.dart';
import 'package:flutter/material.dart';

class MyTitles extends StatelessWidget {
  final String text;
  const MyTitles({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text, style: CustomFonts.playfairStyle()),
        ],
      ),
    );
  }
}
