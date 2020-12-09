import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        '/explore': (BuildContext conext) => Explore(),
        '/skills': (BuildContext context) => Views(),
        '/projects': (BuildContext context) => Views(),
      },
      //home: Views(),
    );
  }
}
