import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Todo create theme
    //Todo Apply home widget
    return MaterialApp(
      title: 'Recipia',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          //todo style the title
          title: const Text('RECIPIA'),
          centerTitle: false,
        ),
        body: const Center(
          child: Text(
            'Let\'s get cooking',
          ),
        ),
      ),
    );
  }
}
