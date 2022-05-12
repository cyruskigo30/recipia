import 'package:flutter/material.dart';
import 'package:recipia/theme/colors.dart';
import 'package:recipia/theme/recipia_theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ///todo add state variables nad functions
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        title: Text(
          'Recipia',
        ),
      ),

      ///todo show selected tab
      body: Center(
        child: Text(
          "Let's get cooking",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),

      ///Add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,

          ///todo set selected tab bar
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_outlined),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_outlined),
              label: 'Comments',
            ),
          ]),
    );
  }
}
