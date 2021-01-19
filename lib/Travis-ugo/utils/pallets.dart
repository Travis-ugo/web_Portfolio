import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Footer/desktop_footer.dart';
import 'package:travis_ugo/Travis-ugo/Footer/mobile_footer.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Project/project_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Skills/mobile_skills.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

// bool isDarkMood;
// Color mainColor = Color(0xFFf6f6f6);
// Color darkMood = Color(0xFF24262c);
// Color secondary = Color(0xFF303030);
// IconData moonIcon = MdiIcons.moonWaxingCrescent;
// IconData sunIcon = MdiIcons.starFace;

class MobilePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        HomeMobile(),
        MobileProject(),
        MobileSkills(),
        MobileFooter(),
      ],
    );
  }
}

class DesktopPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        HomeDesktop(),
        DesktopProject(),
        DesktopSkills(),
        DesktopFooter(),
      ],
    );
  }
}
