import 'package:book_junction/screens/read_book_night.dart';
import 'package:book_junction/screens/read_river.dart';
import 'package:book_junction/services/constants/images.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/show_book_view.dart';
import 'package:flutter/material.dart';

class BookNight extends StatefulWidget {
  const BookNight({super.key});

  @override
  State<BookNight> createState() => _BookNightState();
}

class _BookNightState extends State<BookNight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowBook(
          synopsis: CustomStrings.bookNightSynopsis,
          rating: CustomStrings.bookNightRating,
          page: CustomStrings.bookNightPage,
          episode: CustomStrings.bookNightEpisode,
          function: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReadBookNight(),
                ));
          },
          book: CustomImages.thirdBook,
          author: CustomStrings.homePageBookOfNightBookAuthor,
          bookName: CustomStrings.bookNightName),
    );
  }
}
