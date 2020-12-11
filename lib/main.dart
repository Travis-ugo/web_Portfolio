import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

import 'Travis-ugo/Project/table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => Home(),
      //   '/explore': (BuildContext conext) => Explore(),
      //   '/skills': (BuildContext context) => Views(),
      //   '/projects': (BuildContext context) => Views(),
      // },
      home: Tablee(),
    );
  }
}

class Ani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: WidgetCircularAnimator(
        child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
          // child: Icon(
          //   Icons.person_outline,
          //   color: Colors.deepOrange[200],
          //   size: 60,
          // ),
          child: Container(child: Image.asset('assets/black..jpg')),
        ),
      )),
    );
  }
}
