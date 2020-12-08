import 'package:flutter/material.dart';
import 'package:travis_ugo/Home/exports.dart';
import 'package:travis_ugo/test/lines.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/': (context) => Home(),
      //   '/explore': (conext) => Explore(),
      //   '/skills': (context) => Views(),
      //   '/projects': (context) => Projects(),
      // },
      home: Lines(),
    );
  }
}
