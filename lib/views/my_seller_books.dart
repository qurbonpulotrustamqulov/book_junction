
import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:book_junction/services/constants/icons.dart';
import 'package:book_junction/views/my_rating.dart';
import 'package:flutter/material.dart';

class BookSeller extends StatelessWidget {
  final void Function()function;
  final Color bcColor;
  final Image image;
  final String bookName;
  final String rating;
  final String author;
  final String price;
  const BookSeller(
      {super.key,
        required this.bcColor,
        required this.image,
        required this.bookName,
        required this.rating,
        required this.author,
        required this.price, required this.function});

  @override
  Widget build(BuildContext context) {
    //bc color//image
    //bookName  //rating //author //price
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: CustomColors.white,
          boxShadow: const [
            BoxShadow(
                spreadRadius: 4, blurRadius: 8, color: CustomColors.whiteGrey)
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.all(14),
                height: 175,
                color: bcColor,
                alignment: Alignment.center,
                child: image),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 12, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(bookName, style: CustomFonts.playfairStyle()),
                      CustomRating(rating: rating)
                    ],
                  ),
                  Text(
                    author,
                    style: CustomFonts.interStyle(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: CustomFonts.interStyle(
                            fontSize: 17, fonWeight: FontWeight.bold),
                      ),
                      const Image(
                        image: CustomIcons.arrowForward,
                        width: 25,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
