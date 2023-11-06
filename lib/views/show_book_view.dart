import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:book_junction/services/constants/icons.dart';
import 'package:book_junction/services/constants/images.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/my_rating.dart';
import 'package:flutter/material.dart';

class ShowBook extends StatefulWidget {
  final void Function() function;
  final String bookName;
  final String author;
  final AssetImage book;
  final String rating;
  final String episode;
  final String page;
  final String synopsis;
  const ShowBook(
      {super.key,
        required this.bookName,
        required this.author,
        required this.book,
        required this.rating,
        required this.episode,
        required this.page,
        required this.synopsis, required this.function});

  @override
  State<ShowBook> createState() => _ShowBookState();
}

class _ShowBookState extends State<ShowBook> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.5),
                color: CustomColors.white,
                boxShadow: [
                  BoxShadow(
                      color: CustomColors.grey.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 0.1)
                ],
              ),

              /// #saved / unsaved
              child: GestureDetector(
                onTap: () {
                  tapped = !tapped;
                  setState(() {});
                },
                child: Image(
                  image: CustomIcons.mark,
                  color: !tapped ? CustomColors.grey : CustomColors.light,
                ),
              ),
            ),

            /// #button read now
            FilledButton(
              onPressed: widget.function,
              style: FilledButton.styleFrom(
                backgroundColor: CustomColors.purple,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                minimumSize: const Size(255, 55),
              ),
              child: const Text(CustomStrings.readNow),
            )
          ],
        ),
      ),


      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(
                      /// #background Image
                      image: CustomImages.background,
                      width: MediaQuery.sizeOf(context).width,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          /// #bookName
                          widget.bookName,
                          style: CustomFonts.playfairStyle(size: 25),
                        ),
                        Text(
                          /// #book author name
                          widget.author,
                          style: CustomFonts.interStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 25),

                        /// #books image
                        Image(image: widget.book, height: 250),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 270,
                  child: SizedBox(
                    child: SingleChildScrollView(
                      padding:
                      const EdgeInsets.only(top: 65, left: 15, right: 30),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          /// # some tile from books
                          text: "${CustomStrings.synopsis}\n\n",
                          style: CustomFonts.playfairStyle(size: 20),
                          children: [
                            TextSpan(
                                style: CustomFonts.interStyle(
                                    color: CustomColors.black),
                                text: widget.synopsis)
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          /// #top left back button
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Align(
              alignment: Alignment(-0.9, -0.81),
              child: Image(image: CustomIcons.back),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.27),

            /// #center container
            child: Container(
              width: 300,
              padding: const EdgeInsets.only(
                left: 27,
                right: 20,
                top: 15,
                bottom: 15,
              ),
              decoration: const BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// #book rating
                  CustomRating(rating: widget.rating),

                  /// # book type
                  CustomRating(
                    rating: widget.episode,
                    color: CustomColors.lightBlue,
                    hasStar: false,
                  ),

                  /// #bookPages
                  RichText(
                    text: TextSpan(
                      text: widget.page,
                      style: CustomFonts.interStyle(fonWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: CustomStrings.pages,
                          style: CustomFonts.interStyle(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
