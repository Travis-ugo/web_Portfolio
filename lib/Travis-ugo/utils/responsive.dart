import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Response extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      // tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
