import 'package:book_junction/screens/read_river.dart';
import 'package:book_junction/services/constants/images.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/show_book_view.dart';
import 'package:flutter/material.dart';

class River extends StatefulWidget {
  const River({super.key});

  @override
  State<River> createState() => _RiverState();
}

class _RiverState extends State<River> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowBook(
          synopsis: CustomStrings.riverSynopsis,
          rating: CustomStrings.riverRating,
          page: CustomStrings.riverPage,
          episode: CustomStrings.riverEpisode,
          function: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReadRiver(),
                ));
          },
          book: CustomImages.fifthBook,
          author: CustomStrings.homePageTheseViolentDelightsBookAuthor,
          bookName: CustomStrings.riverName),
    );
  }
}
