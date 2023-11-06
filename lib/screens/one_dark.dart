import 'package:book_junction/screens/read_one_dark.dart';
import 'package:book_junction/services/constants/images.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/show_book_view.dart';
import 'package:flutter/material.dart';

class OneDarkBook extends StatefulWidget {
  const OneDarkBook({super.key});

  @override
  State<OneDarkBook> createState() => _OneDarkBookState();
}

class _OneDarkBookState extends State<OneDarkBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowBook(
        bookName: CustomStrings.bookDarkWindowName,
        author: CustomStrings.bookDarkWindowAuthor,
        book: CustomImages.sevenBook,
        function: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ReadOneDark(),
              ));
        },
        episode: CustomStrings.oneDarkEpisode,
        page: CustomStrings.oneDarkPage,
        rating: CustomStrings.oneDarkRating,
        synopsis: CustomStrings.oneDarkSynopsis,
      ),
    );
  }
}
