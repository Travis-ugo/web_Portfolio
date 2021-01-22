import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'Travis-ugo/Footer/desktop_footer.dart';
import 'Travis-ugo/Footer/mobile_footer.dart';
import 'Travis-ugo/Home/HomeDescktop/home_desktop.dart';
import 'Travis-ugo/ViewPort/desktop_views.dart';
import 'Travis-ugo/ViewPort/mobile_view.dart';
import 'Travis-ugo/Skills/mobile_skills.dart';
import 'Travis-ugo/ViewPort/redesign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => HomeDesktop(),
      //   '/mobileskills': (BuildContext context) => DesktopSkills(),
      //   '/mobileproject': (BuildContext context) => DesktopProject(),
      //   '/mobileInfo': (BuildContext context) => DesktopRedesign(),
      //   '/mobilefooter': (BuildContext context) => DesktopFooter(),
      // },
      home: MenuDesktop(),
    );
  }
}
