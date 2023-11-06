import 'package:book_junction/screens/book_night.dart';
import 'package:book_junction/screens/one_dark.dart';
import 'package:book_junction/screens/read_violent.dart';
import 'package:book_junction/screens/river.dart';
import 'package:book_junction/screens/wolfden.dart';
import 'package:book_junction/services/constants/images.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/show_book_view.dart';
import 'package:flutter/material.dart';

class Violent extends StatefulWidget {
  const Violent({super.key});

  @override
  State<Violent> createState() => _ViolentState();
}

class _ViolentState extends State<Violent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowBook(
          synopsis: CustomStrings.violentSynopsis,
          rating: CustomStrings.violentRating,
          page: CustomStrings.violentPage,
          episode: CustomStrings.violentEpisode,
          function: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReadViolent(),
                ));
          },
          book: CustomImages.sixthBook,
          author: CustomStrings.homePageTheseViolentDelightsBookAuthor,
          bookName: CustomStrings.violentName),
    );
  }
}

