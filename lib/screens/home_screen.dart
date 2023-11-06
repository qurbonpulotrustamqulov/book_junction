import 'package:book_junction/screens/book_night.dart';
import 'package:book_junction/screens/one_dark.dart';
import 'package:book_junction/screens/violent.dart';
import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/icons.dart';
import 'package:book_junction/services/constants/images.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:book_junction/views/my_app_bar.dart';
import 'package:book_junction/views/my_book_card.dart';
import 'package:book_junction/views/my_bottom_icons.dart';
import 'package:book_junction/views/my_buttons.dart';
import 'package:book_junction/views/my_seller_books.dart';
import 'package:book_junction/views/my_text_field.dart';
import 'package:book_junction/views/my_titles.dart';
import 'package:flutter/material.dart';

import 'river.dart';
import 'wolfden.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int button = 2;
  int selected = 0;
  int selectBottom = 0;

  List<String> texts = [
    CustomStrings.homePageAllCategory,
    CustomStrings.homePageRomanceCategory,
    CustomStrings.homePageSciFiCategory,
    CustomStrings.homePageFantasyCategory,
    CustomStrings.homePageClassicsCategory,
    CustomStrings.homePageDarkAcademiaCategory
  ];

  List<String> booksNames = [
    CustomStrings.homePageBookOfNightBookHeaderText,
    CustomStrings.homePageTheWolfDenBookHeaderText,
    CustomStrings.homePageARiverEnchantedHeaderText,
    CustomStrings.homePageTheseViolentDelightsHeaderText,
    CustomStrings.bookDarkWindow
  ];

  List<AssetImage> images = [
    CustomImages.thirdBook,
    CustomImages.fourthBook,
    CustomImages.fifthBook,
    CustomImages.sixthBook,
    CustomImages.sevenBook
  ];

  List<Color> colors = [
    CustomColors.yellow,
    CustomColors.orange,
    CustomColors.secondBlue,
    CustomColors.secondPink,
    CustomColors.cyan
  ];

  List<String> authors = [
    CustomStrings.homePageBookOfNightBookAuthor,
    CustomStrings.homePageTheWolfDenBookAuthor,
    CustomStrings.homePageARiverEnchantedBookAuthor,
    CustomStrings.homePageTheseViolentDelightsBookAuthor,
    CustomStrings.bookDarkWindowAuthor
  ];

  List<String> prices = [
    CustomStrings.homePageBookOfNightBookPrice,
    CustomStrings.homePageTheWolfDenBookPrice,
    CustomStrings.homePageARiverEnchantedBookPrice,
    CustomStrings.homePageTheseViolentDelightsBookPrice,
    CustomStrings.bookDarkWindowPrice
  ];

  List<String> ratings = [
    CustomStrings.homePageBookOfNightBookRating,
    CustomStrings.homePageTheWolfDenBookRating,
    CustomStrings.homePageARiverEnchantedBookRating,
    CustomStrings.homePageTheseViolentDelightsBookRating,
    CustomStrings.bookDarkWindowRating
  ];

  List<AssetImage> bottomIcons = [
    CustomIcons.home,
    CustomIcons.category,
    CustomIcons.bookmark,
    CustomIcons.profile
  ];
  final pages =const [
    BookNight(),
    WolfDen(),
    River(),
    Violent(),
    OneDarkBook()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,

      /// #book Junction screens app bar
      appBar: CustomAppBar.myAppBar,

      /// #bottom app bar
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            /// #bootom app bars icons
            for (int i = 0; i < 4; i++)
              BottomIcons(
                  image: bottomIcons[i],
                  selection: i,
                  function: () {
                    selectBottom = i;
                    setState(() {});
                  },
                  selectedBottom: selectBottom)
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          /// #book junction screens text field
          const MyTextField(),

          /// #books categories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  for (int i = 0; i < 6; i++)
                    MyButtons(
                        i: i,
                        selected: selected,
                        onPressed: () {
                          selected = i;
                          setState(() {});
                        },
                        text: texts[i]),
                ],
              ),
            ),
          ),

          /// #title: continue reading
          const MyTitles(text: CustomStrings.homePageContinueReadingText),

          SizedBox(
            height: 170,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                /// #reading book one
                BookCard(
                    image: Image(
                      image: CustomImages.firstBook,
                    ),
                    color: CustomColors.blue),

                /// #reading book two
                BookCard(
                    image: Image(
                      image: CustomImages.secondBook,
                    ),
                    color: CustomColors.grey)
              ],
            ),
          ),

          /// #best sellers
          const MyTitles(text: CustomStrings.homePageBestSellersText),

          ///# Container for situated sellers books
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: booksNames.length ~/ 2 * 470,
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 170 / 280,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20),
              children: [
                ///# sellers books
                for (int i = 0; i < booksNames.length; i++)
                  BookSeller(
                    bcColor: colors[i],
                    image: Image(
                      image: images[i],
                    ),
                    bookName: booksNames[i],
                    rating: ratings[i],
                    author: authors[i],
                    price: prices[i],
                    function: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) => pages[i],));
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
