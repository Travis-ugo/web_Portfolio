import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'Travis-ugo/Contact/mobile_footer.dart';
import 'Travis-ugo/Desktop/desktop_pro.dart';
import 'Travis-ugo/Desktop/desktop_service.dart';
import 'Travis-ugo/Desktop/desktpo_info.dart';
import 'Travis-ugo/Desktop/menu_descktop.dart';
import 'Travis-ugo/Dispatch/correction.dart';
import 'Travis-ugo/Home/HomeMobile/mobile_view.dart';
import 'Travis-ugo/Home/HomeMobile/project_mobile.dart';
import 'Travis-ugo/Skills/Project/project_desktop.dart';
import 'Travis-ugo/Skills/mobile_skills.dart';
import 'Travis-ugo/Utils/responsive.dart';

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
        '/': (BuildContext context) => Response(),
        '/mobileskills': (BuildContext context) => SKillsMobileRedesign(),
        '/mobileproject': (BuildContext context) => ProjectsMobileDesign(),
        '/mobileInfo': (BuildContext context) => MobileRiri(),
        '/mobilefooter': (BuildContext context) => MobileFooter(),
        '/Desktopproject': (BuildContext context) => ProjectRiri(),
        '/DesktopService': (BuildContext context) => ServiceDesktop(),
        '/DesktopInfo': (BuildContext context) => DesktopRedesign(),
      },
      //home: Mobile(),
    );
  }
}
