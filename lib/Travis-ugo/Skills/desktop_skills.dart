import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Models/skill_data.dart';

class DesktopSkills extends StatefulWidget {
  @override
  _DesktopSkillsState createState() => _DesktopSkillsState();
}

Color textColor;

class _DesktopSkillsState extends State<DesktopSkills> {
  void mood() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        space = 150;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    mood();
  }

  double space = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // MenuDesktop(),
                    SizedBox(height: 0),
                    Text(
                      'Skills',
                      style: largeText,
                    ),
                    Icon(
                      CupertinoIcons.arrow_down,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Personal Skills',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height / 18),
                      new Padding(
                        padding: EdgeInsets.only(
                          right: space,
                        ),
                        child: RoundMan(
                          color: Colors.blueAccent,
                          title: 'UI/UX design',
                          subtitle:
                              '''Beautiful user friendly\napplications for moble and web\napplications''',
                          icon: MdiIcons.pictureInPictureBottomRight,
                          cloud: 250,
                          x: -0.9,
                          y: 0.3,
                        ),
                      ),
                      RoundMan(
                        cloud: 90,
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
                        cloud: 150,
                        color: Colors.yellowAccent,
                        title: 'Web Dev',
                        subtitle:
                            'Responsive and fast web\napppications for user expenrince',
                        icon: MdiIcons.laptopChromebook,
                        x: -0.0,
                        y: 0.1,
                      ),
                      SizedBox(width: space),
                      RoundMan(
                        cloud: 60,
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
            ),
          ],
        ),
      ),
    );
  }
}
