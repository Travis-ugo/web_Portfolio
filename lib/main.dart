import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import 'Travis-ugo/Explore/freeze.dart';
import 'Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'Travis-ugo/Project/table.dart';
import 'Travis-ugo/utils/responsive.dart';

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
      home: Cold(),
    );
  }
}
