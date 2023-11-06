
import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:book_junction/services/constants/icons.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    super.key,
    required this.rating,
    this.hasStar = true,
    this.color = CustomColors.yellow
  });

  final String rating;
  final bool hasStar;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: 18,
      //width: 40,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: hasStar ? const Image(
              image: CustomIcons.star,
              height: 12,
            ) : null,
          ),
          Text(
            rating,
            style: CustomFonts.interStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
