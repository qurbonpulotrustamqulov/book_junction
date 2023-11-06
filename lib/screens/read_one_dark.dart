import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/read_book_view.dart';
import 'package:flutter/material.dart';

class ReadOneDark extends StatelessWidget {
  const ReadOneDark({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReadBook(
        content: CustomStrings.oneDarkContent,
        someTile: CustomStrings.oneDarkSomeTile,
      ),
    );
  }
}

