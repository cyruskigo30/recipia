import 'package:flutter/material.dart';
import 'package:recipia/theme/colors.dart';
import 'package:recipia/theme/recipia_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({
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
          color: kDarkCardColor,
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

        child: Stack(
          children: [
            ///todo add dark overlay box decoration
            /// add container column and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.bookmark_outline_rounded,
                  size: 40,
                  color: kDarkTextColor,
                ),
                const SizedBox(height: 8),
                Text(
                  'Recipe Trends',
                  style: RecipiaTheme.darkTextTheme.headline2,
                ),
                const SizedBox(height: 30),
              ],
            ),

            /// add  center widget with chip widget
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: [
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'Healthy',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'vegan',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'Carrots',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'Greens',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'Pescetarian',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'Wheat',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'Fruits',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'vegan',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).cardColor,
                    label: Text(
                      'vegan',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onDeleted: () {
                      print('deleted');
                    },
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
