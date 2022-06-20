import 'package:flutter/material.dart';
import 'package:recipia/theme/colors.dart';

import '../api/mock_recipia_service.dart';
import '../models/explore_data.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({
    Key? key,
  }) : super(key: key);

  ///create a mockservice object that mocks server responses
  final mockService = MockRecipiaService();

  @override
  Widget build(BuildContext context) {
    ///A Future Builder can only  be built within the build widget
    return FutureBuilder(
      /// A future builder has two parameters a future and a builder
      /// The future builder takes in a future as a parameter (getExploreData())
      /// which creates a future that will, in turn , return an ExploreData instance.
      /// That instance will contain two lists, todayRecipes and friendPosts
      future: mockService.getExploreData(),

      ///The snapshot is used to check the current state of the Future
      ///Now the future is complete and we can extract the data to pass to our widget
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        ///todo add nested list Views

        if (snapshot.connectionState == ConnectionState.done) {
          ///snapshot.data returns ExploreData, from which we extract todayRecipes to pass to the listView
          ///and if no data is present, it returns an empty list
          final recipes = snapshot.data?.todayRecipes ?? [];

          return Center(
            child: Container(
              child: const Text(' Show TodayRecipeListView'),
            ),
          );
        } else {
          ///when the future is loading we show the user the spinner
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Loading'),
                SizedBox(height: 20),
                CircularProgressIndicator(
                  color: kLightAppBarBackgroundColor,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
