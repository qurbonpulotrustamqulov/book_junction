import 'package:book_junction/screens/home_screen.dart';
import 'package:book_junction/views/my_app_bar_style.dart';
import 'package:flutter/material.dart';

class BookJunctionApp extends StatelessWidget {
  const BookJunctionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppBarStyle.themeData,
      home: const HomeScreen(),
    );
  }
}
