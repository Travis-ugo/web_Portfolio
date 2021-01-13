import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'Travis-ugo/Project/project_mobile.dart';
import 'Travis-ugo/utils/animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //   '/': (BuildContext context) => HomeDesktop(),
        //   //'/explore': (BuildContext conext) => Explore(),
        //   '/skills': (BuildContext context) => Views(),
        // '/': (BuildContext context) => ProjectsMobile(),
        // '/views': (BuildContext context) => InfoMobile(),
      },
      home: HomeMobile(),
    );
  }
}

var smooth;

class Molor {
  var lo = Text('cool');
  Color mainColor = Color(0xFFFFFFF6);
  void colorSwitch() {
    // mainColor = Color(0xFF20201F);
    if (mainColor == Color(0xFFFFFFF6)) {
      mainColor = Color(0xFF20201F);
    } else {
      mainColor = Color(0xFFFFFFF6);
    }
  }
}
