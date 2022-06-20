import 'package:flutter/material.dart';
import 'package:recipia/screens/explore_screen.dart';
import '../../theme/colors.dart';
import '../../utils/constants.dart';
import '../components/card2.dart';
import '../components/card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ///add state variables and functions
  ///selected index keeps track fo which tab is currently selected
  ///the selected index state is being tracked by home state
  int _selectedIndex = 0;

  ///we define the widgets that will be displayed on each tab
  static List<Widget> pages = <Widget>[
    ///? Explore screen
    ExploreScreen(),

    ///todo replace with recipe screen
    const Card2(),

    ///todo replace with recipe screen
    const Card3(),
  ];

  ///function that handles tapped bar item and we set the index of the item the user pressed
  ///set state notifies the home state that the state of the object has changed and it rebuilds this widget internally
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: kDefaultElevation,
        centerTitle: false,
        title: Text(
          'Recipia',
          style: Theme.of(context).textTheme.headline2?.copyWith(
                color: kWhiteColor,
              ),
        ),
      ),

      /// as the framework rebuild the widget it displays the content of the selected bar item
      body: pages[_selectedIndex],

      ///Add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        ///define the elevation of the bottom navigation bar
        elevation: kDefaultElevation,

        ///set the selection color when a tab is tapped
        ///this color is set in the theme specifically the bottom navigation theme data on the selected item color parameter
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,

        ///set selected tab bar to be the current index which is a default parameter
        ///current index tells the bottom navigation bar which tab bar to highlight
        currentIndex: _selectedIndex,

        ///on tap is an inbuilt function parameter which calls the private custom function
        ///that sets selected index  in order for the home state to rebuild
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cookie_outlined),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'To Buy',
          ),
        ],
      ),
    );
  }
}
