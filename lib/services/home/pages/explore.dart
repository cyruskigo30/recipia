import 'package:flutter/material.dart';
import 'package:recipia/widgets/author_card_builder.dart';
import 'package:recipia/theme/colors.dart';

class Explore extends StatelessWidget {
  const Explore({
    Key? key,
  }) : super(key: key);
  final String category = "Editor's Choice";
  final String title = "The art of dough";
  final String description = "Learn to make the perfect bread";
  final String chef = "Cyrus James";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        // constraints: const BoxConstraints.expand(
        //   width: 350,
        //   height: 450,
        // ),
        decoration: const BoxDecoration(
          color: kWhiteColor,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/pageTwo.jpg',
            ),
            fit: BoxFit.cover,
            opacity: .15,
          ),
          // borderRadius: BorderRadius.all(
          //   Radius.circular(kDefaultBorderRadius),
          // ),
        ),

        ///add stack of text to the container

        child: Stack(
          children: const [
            ///todo add dark overlay box decoration
            ///todo add container column and text
            ///todo add  center widget with chip widget
          ],
        ),
      ),
    );
  }
}
