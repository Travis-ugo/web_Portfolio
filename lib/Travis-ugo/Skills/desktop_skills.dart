import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/Models/skill_data.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/Utils/widgets.dart';

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
    return Column(
      children: [
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
    );
  }
}

class SkillDesktopRedesign extends StatefulWidget {
  @override
  _SkillDesktopRedesignState createState() => _SkillDesktopRedesignState();
}

class _SkillDesktopRedesignState extends State<SkillDesktopRedesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: (isColored ? Color(0xFFff1744) : Color(0xFF303030)),
              child: Center(
                child: Text(
                  'Personal Skills',
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/15.png'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Icon(
                            Icons.arrow_downward,
                            size: 34,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 4),
                  Container(
                    color: (isColored ? Color(0xFFff1744) : Color(0xFF303030)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        Center(
                          child: Text(
                            'Art',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        DesktopSkills(),
                        SizedBox(height: 100),
                        DesktopFoot(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 20),
            //   child: MenuMobile(),
            // ),
          ],
        ),
      ),
    );
  }
}
