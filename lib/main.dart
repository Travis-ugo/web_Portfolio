import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Project/project_mobile.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'Travis-ugo/Footer/mobile_footer.dart';
import 'Travis-ugo/Project/viewModel.dart';
import 'Travis-ugo/Skills/mobile_skills.dart';

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
        '/': (BuildContext context) => HomeMobile(),
        '/mobileskills': (BuildContext context) => Pagination(),
        '/mobileproject': (BuildContext context) => MobileProject(),
        '/mobileInfo': (BuildContext context) => InfoMobile(),
        '/mobilefooter': (BuildContext context) => MobileFooter(),
      },
      // home: Pagination(),
    );
  }
}
