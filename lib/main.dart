import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'Travis-ugo/Desktop/desktop_pro.dart';
import 'Travis-ugo/Desktop/desktop_service.dart';
import 'Travis-ugo/Desktop/desktpo_info.dart';
import 'Travis-ugo/Mobile/mobile_view.dart';
import 'Travis-ugo/Mobile/project_mobile.dart';
import 'Travis-ugo/Mobile/services.dart';
import 'Travis-ugo/Utils/responsive.dart';
import 'Travis-ugo/loading.dart';

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
        '/': (BuildContext context) => Loading(),
        '/home': (BuildContext context) => Response(),
        '/service': (BuildContext context) => Service(),
        '/projects': (BuildContext context) => Projects(),
        '/mobileInfo': (BuildContext context) => MobileRiri(),
        '/DesktopInfo': (BuildContext context) => DesktopRedesign(),
      },
      //home: Mobile(),
    );
  }
}
