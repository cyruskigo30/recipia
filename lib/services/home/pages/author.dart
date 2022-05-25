import 'package:flutter/material.dart';
import 'package:recipia/theme/colors.dart';
import 'package:recipia/theme/recipia_theme.dart';

class Author extends StatelessWidget {
  const Author({
    Key? key,
  }) : super(key: key);
  final String category = "Editor's Choice";
  final String title = "The art of dough";
  final String description = "Learn to make the perfect bread";
  final String chef = "Cyrus Kigo";

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

        child: Stack(
          children: [
            Text(
              category,
              style: RecipiaTheme.lightTextTheme.headline1,
            ),
            Positioned(
              child: Text(
                title,
                style: RecipiaTheme.lightTextTheme.headline3,
              ),
              top: 35,
            ),
            Positioned(
              child: Text(
                description,
                style: RecipiaTheme.lightTextTheme.bodyText1,
              ),
              bottom: 40,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: RecipiaTheme.lightTextTheme.bodyText2,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
