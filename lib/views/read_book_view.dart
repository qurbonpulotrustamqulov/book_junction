import 'package:book_junction/services/constants/colors.dart';
import 'package:book_junction/services/constants/fonts.dart';
import 'package:book_junction/services/constants/icons.dart';
import 'package:book_junction/services/constants/strings.dart';
import 'package:flutter/material.dart';

class ReadBook extends StatefulWidget {
  final String someTile;
  final String content;
  const ReadBook({super.key, required this.content, required this.someTile});

  @override
  State<ReadBook> createState() => _ReadBookState();
}

class _ReadBookState extends State<ReadBook> {
  double size = 14;

  @override
  Widget build(BuildContext context) {
    int count = widget.content
        .substring(1)
        .split("")
        .take(((MediaQuery.sizeOf(context).width - 50 - 0.76 * size) ~/
        (0.21 * size) -
        0.28 * size)
        .toInt())
        .join()
        .length;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: const Alignment(-1, -1),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(DateTime.now().hour <= 12
                            ? "${DateTime.now().hour} : ${DateTime.now().minute} AM"
                            : "${DateTime.now().hour} : ${DateTime.now().minute} PM"),
                       const SizedBox(width: 120,),
                        IconButton(onPressed: () {
                          if(size >0){
                            size--;
                          }
                          setState(() {
                          });
                        }, icon: const Icon(CustomIcons.remove, color: CustomColors.black,)),
                        IconButton(onPressed: () {
                         if(size < 34){
                           size++;
                         }
                          setState(() {
                          });
                        }, icon: const Icon(CustomIcons.add, color: CustomColors.black,))
                      ],

                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    CustomStrings.chapterOne,
                    style: CustomFonts.playfairStyle(
                        size: 18, decoration: TextDecoration.underline),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                    // height: 240,
                    decoration: BoxDecoration(
                        color: CustomColors.white, border: Border.all()),
                    child: Text(widget.someTile,
                      textAlign: TextAlign.center,
                      style: CustomFonts.interStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: size * 4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          alignment: Alignment.center,
                          height: size * 4.3,
                          width: widget.content[0] == "I" ||widget.content[0] == "i" ? size * 3 : null,
                          child: Text(
                            widget.content[0],
                            style: TextStyle(
                                fontSize: size * 4.3,
                                fontWeight: FontWeight.w800,
                                height: 1.01),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.content.substring(1, count).substring(
                              0,
                              widget.content
                                  .substring(0, count)
                                  .lastIndexOf(
                                RegExp(r'[ -\-,]'),
                              ),
                            ),
                            style: CustomFonts.interStyle(fontSize: size),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                   widget.content.substring(widget.content
                        .substring(1, count)
                        .substring(
                      0,
                      widget.content
                          .substring(0, count)
                          .lastIndexOf(
                        RegExp(r'[ -\-,]'),
                      ),
                    )
                        .length +
                        1),
                    style: CustomFonts.interStyle(fontSize: size),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        elevation: 0,
        padding: EdgeInsets.only(bottom: 30, top: 15, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "20 mins left in chapter",
            ),
            Text("0 %"),
          ],
        ),
      ),
    );
  }
}
