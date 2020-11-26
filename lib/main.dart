import 'package:flutter/material.dart';
import 'package:travis_ugo/Home/home.dart';
import 'package:travis_ugo/To%20Do/Services.dart';

import 'page2/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Services(),
    );
  }
}
