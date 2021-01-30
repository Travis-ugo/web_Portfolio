import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/desktop_pro.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/desktop_service.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/desktpo_info.dart';
import 'package:travis_ugo/Travis-ugo/Dispatch/correction.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/mobile_view.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/project_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/services.dart';
import 'package:travis_ugo/Travis-ugo/Tablet/home_tablet.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Response extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile(), // MobilePageView(),
      tablet: HomeTablet(),
      desktop: HomeDesktop(),
    );
  }
}

class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceMobile(),
      //tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProjectsMobileDesign(),
      //tablet: HomeTablet(),
      desktop: ProjectRiri(),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileRiri(),
      //tablet:
      desktop: DesktopRedesign(),
    );
  }
}
