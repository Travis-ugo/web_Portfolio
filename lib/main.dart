import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'Travis-ugo/Contact/mobile_footer.dart';
import 'Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
import 'Travis-ugo/Project/project_mobile.dart';
import 'Travis-ugo/Skills/mobile_skills.dart';
import 'Travis-ugo/ViewPort/didi_redesign.dart';
import 'Travis-ugo/ViewPort/mobile_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Love Galour',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        // '/': (BuildContext context) => HomeMobileRedesign(),
        // '/mobileskills': (BuildContext context) => SKillsMobileRedesign(),
        // '/mobileproject': (BuildContext context) => ProjectsMobileDesign(),
        // '/mobileInfo': (BuildContext context) => MobileRiri(),
        // '/mobilefooter': (BuildContext context) => MobileFooter(),
        '/': (BuildContext context) => MenuDesktop(),
        '/mobileproject': (BuildContext context) => ProjectDesktopRedesign(),
        '/mobileskills': (BuildContext context) => SkillDesktopRedesign(),
        '/mobileInfo': (BuildContext context) => DesktopRedesign(),
        '/mobilefooter': (BuildContext context) => MobileFooter(),
      },
      // home: MenuDesktop(),
    );
  }
}
