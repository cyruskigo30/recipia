import 'package:flutter/material.dart';
import 'package:recipia/utils/constants.dart';
import 'package:recipia/widgets/circle_image_builder.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: kDefaultElevation,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(kDefaultBorderRadius),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleImage(
                  ///The image provider from the circle avatar is passed to the image provider
                  ///of the author card
                  imageProvider: imageProvider,

                  /// if you leave the circle radius empty then the default will be applied
                  /// which is set as 20 in the circleImage widget
                  circleRadius: 28,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ],
            ),

            ///add icon button
            IconButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Favorite Pressed'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(
                Icons.favorite_outline,
                color: Theme.of(context).textTheme.headline1?.color,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
