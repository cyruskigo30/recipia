import 'package:flutter/material.dart';
import 'package:recipia/widgets/author_card_builder.dart';
import 'package:recipia/theme/colors.dart';

class Author extends StatelessWidget {
  const Author({
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
          ),
          // borderRadius: BorderRadius.all(
          //   Radius.circular(kDefaultBorderRadius),
          // ),
        ),

        ///add stack of text to the container

        child: Column(
          children: const [
            /// import author card
            AuthorCard(
              title: 'Smoothie Connoisseur',
              authorName: 'Cyrus James',

              ///ImageProvider of the AuthorCard is passed to the calling of the actual card with actual link to the image asset
              imageProvider: AssetImage('assets/images/cover.png'),
            ),

            ///todo add positioned text
          ],
        ),
      ),
    );
  }
}
