import 'package:flutter/material.dart';
import 'package:plat_shop/Strings_Lists/strings.dart';

import '../Strings_Lists/lists.dart';

class Screens extends StatefulWidget {

  final Function(String) onScreen;
  const Screens({super.key, required this.onScreen});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      scrollDirection: Axis.horizontal,
      itemCount: screenStrings.length,
      itemBuilder: (context, index) => buildScrens(index),
    );
  }

  Widget buildScrens(int index) {
    return GestureDetector(
      onTap: () {
        widget.onScreen(screenStrings[index]);
        setState(() {
          isSelected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              screenStrings[index],
              style: TextStyle(
                fontWeight:
                isSelected == index ? FontWeight.bold : FontWeight.normal,
                color: isSelected == index ? Colors.black : Colors.grey,
                fontSize: 19,
                fontFamily: font,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8),
              color: isSelected == index ? Colors.green : Colors.transparent,
              height: 4,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
