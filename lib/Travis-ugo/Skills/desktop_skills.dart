import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Travis-ugo/Contact/desktop_footer.dart';
import 'package:travis_ugo/Travis-ugo/Contact/mobile_footer.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
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

class ServiceDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0D0F),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200),
              child: Text(
                'WHAT.',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    // fontSize: 240,
                    fontSize: MediaQuery.of(context).size.width / 5.5,
                    fontWeight: FontWeight.w700,
                    color: mainColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            Text(
              'CREATIVE RASTER',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: mainColor,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 70),
            Text(
              'Consistency is all i need to Hard work\nwill do the magic and Practice',
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Consistency is all i need to succed Hard work and Practice will do the magic\nHard work and Practice  succed Hard work and Practice will\n succed Hard work and Practice will',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.3,
                fontSize: 12,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2),
            Text(
              'SERVICES',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: mainColor,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Develope',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mobile Applications',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                    Text(
                      'Web Development',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 130),
                Column(
                  children: [
                    Text(
                      'Design',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'UI Design',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                    Text(
                      'UX Design',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 130),
                Column(
                  children: [
                    Text(
                      'Deploy',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'FireBase',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                    Text(
                      'AWS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            DesktopFooter()
          ],
        ),
      ),
    );
  }
}

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0D0F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 400),
              child: Text(
                'WHAT.',
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  fontSize: 46,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    'CREATIVE RASTER',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: mainColor,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 70),
                  Text(
                    'Consistency is all i need to Hard work will do the magic and Practice',
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      fontSize: 26,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Consistency is all i need to succed Hard work and Practice will do the magic Hard work and Practice  succed Hard work and Practice will succed Hard work and Practice will',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.3,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 150),
                  Text(
                    'SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: mainColor,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Develope',
                            style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Mobile Applications',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                          Text(
                            'Web Development',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          Text(
                            'Design',
                            style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'UI Design',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                          Text(
                            'UX Design',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          Text(
                            'Deploy',
                            style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'FireBase',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                          Text(
                            'AWS',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 3),
                ],
              ),
            ),
            MobileFooter(),
          ],
        ),
      ),
    );
  }
}
