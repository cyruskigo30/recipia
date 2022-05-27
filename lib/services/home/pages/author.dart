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
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          image: const DecorationImage(
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

        child: Column(
          children: [
            /// import author card
            const AuthorCard(
              title: 'Smoothie Connoisseur',
              authorName: 'Cyrus James',

              ///ImageProvider of the AuthorCard is passed to the calling of the actual card with actual link to the image asset
              imageProvider: AssetImage(
                'assets/images/cover.png',
              ),
            ),

            ///add positioned text
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 10,
                    child: Text(
                      'Recipe',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
