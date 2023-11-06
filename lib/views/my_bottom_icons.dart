import 'package:book_junction/services/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {
  final AssetImage image;
  final int selection;
  final int selectedBottom;
  final void Function() function;
  const BottomIcons(
      {super.key,
      required this.selection,
      required this.function,
      required this.selectedBottom,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: selection == selectedBottom ? CustomColors.black : null),
          ),
          IconButton(
            onPressed: function,
            icon: Image(
              image: image,
              width: 25,
            ),
          )
        ],
      ),
    );
  }
}
