
import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/my_buttons.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  final Image image;
  final Color color;
  const BookCard({super.key, required this.image, required this.color});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  int button = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 4, top: 10),
      clipBehavior: Clip.antiAlias,
      height: 150,
      width: 310,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
              color: CustomColors.whiteGrey, spreadRadius: 3, blurRadius: 4)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 100,
            height: 200,
            color: widget.color,
            child: widget.image,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, top: 17, right: 10, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(CustomStrings.homePageADayOfFallenNightBookHeaderText,
                    style: CustomFonts.playfairStyle()),
                Text(CustomStrings.homePageADayOfFallenNightBookAuthor,
                    style: CustomFonts.interStyle()),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 115),
                  height: 5,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.5),
                    color: CustomColors.grey.withOpacity(0.8),
                  ),
                  child: Container(
                    height: 5,
                    width: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: CustomColors.pink,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 140,
                    ),
                    Text(CustomStrings.homePagePercent)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: MyButtons(
                    i: 1,
                    selected: button,
                    onPressed: () {
                      if (button == 1) {
                        button = 2;
                        setState(() {});
                      } else {
                        button = 1;
                        setState(() {});
                      }
                    },
                    text: CustomStrings.updateProgressButtonText,

                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}