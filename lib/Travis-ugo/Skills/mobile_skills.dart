import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/menu_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Models/skill_data.dart';

class MobileSkills extends StatefulWidget {
  @override
  _MobileSkillsState createState() => _MobileSkillsState();
}

class _MobileSkillsState extends State<MobileSkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RoundMan(
                      color: Colors.blue,
                      title: 'UI/UX design',
                      subtitle:
                          '''Beautiful user friendly\napplications for moble and web\napplications''',
                      icon: MdiIcons.pictureInPictureBottomRight,
                      cloud: 230,
                      x: -0.5,
                      y: 0.3,
                    ),
                    RoundMan(
                      cloud: 110,
                      color: Colors.red,
                      title: 'Web Dev',
                      subtitle:
                          'Responsive and fast web\napppications for user expenrince',
                      icon: MdiIcons.laptopChromebook,
                      x: 0.5,
                      y: -0.2,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RoundMan(
                      cloud: 115,
                      color: Colors.yellowAccent,
                      title: 'Web Dev',
                      subtitle:
                          'Responsive and fast web\napppications for user expenrince',
                      icon: MdiIcons.laptopChromebook,
                      x: -0.0,
                      y: 0.1,
                    ),
                    SizedBox(height: 10),
                    RoundMan(
                      cloud: 70,
                      color: Colors.greenAccent,
                      title: "Mobile Dev",
                      subtitle:
                          '''develope\ncross platform native apps\nfor easy user experiences''',
                      icon: Icons.phone_android,
                      x: -0.0,
                      y: -0.9,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SkillPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MenuMobile(),
              Center(
                child: Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Icon(MdiIcons.arrowDown),
            ],
          ),
        ),
      ),
    );
  }
}

class Pagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        SkillPage(),
        MobileSkills(),
      ],
    );
  }
}
