import 'package:flutter/material.dart';
import 'theme/recipia_theme.dart';
import 'home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///create theme
    final theme = RecipiaTheme.light();
    //Todo Apply home widget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: 'Recipia',
      theme: theme,
      darkTheme: RecipiaTheme.dark(),
      home: const Home(),
    );
  }
}
