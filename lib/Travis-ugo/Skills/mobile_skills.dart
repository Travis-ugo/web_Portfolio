import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/menu_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Models/skill_data.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';

class SKillsMobileRedesign extends StatefulWidget {
  @override
  _SKillsMobileRedesignState createState() => _SKillsMobileRedesignState();
}

class _SKillsMobileRedesignState extends State<SKillsMobileRedesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF0F0F0F),
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Skills',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/15.png'),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 90,
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.arrow_downward,
                        size: 34,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 6),
                  Container(
                    color: Color(0xFF0F0F0F),
                    child: Column(
                      children: [
                        SizedBox(height: 26),
                        Center(
                          child: Text(
                            'Personal Skills',
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 6,
                        ),
                        // inut sikls here
                        SKilBalls(),
                        SizedBox(height: 100),
                        MobilePin(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: MenuMobile(),
            ),
          ],
        ),
      ),
    );
  }
}

class SKilBalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  color: Colors.lightBlue,
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
                  color: Colors.white,
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
    );
  }
}
