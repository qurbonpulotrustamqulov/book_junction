
import 'package:book_junction/screens/read_wolfden.dart';
import 'package:book_junction/services/constants/images.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/show_book_view.dart';
import 'package:flutter/material.dart';

class WolfDen extends StatefulWidget {
  const WolfDen({super.key});

  @override
  State<WolfDen> createState() => _WolfDenState();
}

class _WolfDenState extends State<WolfDen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowBook(
          synopsis: CustomStrings.wolfDenSynopsis,
          rating: CustomStrings.wolfDenRating,
          page: CustomStrings.wolfDenPage,
          episode: CustomStrings.wolfDenEpisode,
          function: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReadWolfDen(),
                ));
          },
          book: CustomImages.fourthBook,
          author: CustomStrings.homePageTheWolfDenBookAuthor,
          bookName: CustomStrings.wolfDenName),
    );
  }
}

