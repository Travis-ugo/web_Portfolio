import 'package:flutter/material.dart';
import 'Home/explore.dart';
import 'Home/home.dart';
import 'Home/projects.dart';
import 'Home/skills.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/explore': (conext) => Explore(),
        '/skills': (context) => Skills(),
        '/projects': (context) => Projects(),
      },
    );
  }
}
