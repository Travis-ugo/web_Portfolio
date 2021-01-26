import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Dispatch/loos.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';

class ProjectDesktopRedesign extends StatefulWidget {
  @override
  _ProjectDesktopRedesignState createState() => _ProjectDesktopRedesignState();
}

class _ProjectDesktopRedesignState extends State<ProjectDesktopRedesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              //color: Color(0xFF0F0F0F),
              width: MediaQuery.of(context).size.width,
              //color: Colors.white,//(isColored ? Color(0xFF04A5F0) : Color(0xFF303030)),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(''),
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
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/backdrop.jpeg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'work',
                              style: GoogleFonts.varelaRound(
                                textStyle: TextStyle(
                                  // fontSize: 240,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 5,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: Icon(
                        //     Icons.arrow_downward,
                        //     size: 34,
                        //     color: mainColor,
                        //   ),
                        //= ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 4),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'work',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            // fontSize: 240,
                            fontSize: MediaQuery.of(context).size.width / 5,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        Center(
                          child: Text(
                            'Select Project',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: mainColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        DesktopProject(),
                        SizedBox(height: 300),
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

class DesktopProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 90,
            right: 90,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travis.title,
                          textAlign: TextAlign.start,
                          style: mainStyle,
                        ),
                        Text(
                          travis.subtitle,
                          style: subStyle,
                        ),
                      ],
                    ),
                    SizedBox(width: 90),
                    DesktopData(
                      white: travis.whiteImage,
                      love: travis,
                      imageurl: travis.imageurl,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DesktopData(
                      white: telegram.whiteImage,
                      love: telegram,
                      imageurl: telegram.imageurl,
                    ),
                    SizedBox(width: 90),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(telegram.title, style: mainStyle),
                        Text(
                          telegram.subtitle,
                          style: subStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(world.title, style: mainStyle),
                        Text(
                          world.subtitle,
                          style: subStyle,
                        ),
                      ],
                    ),
                    SizedBox(width: 90),
                    DesktopData(
                      white: world.whiteImage,
                      love: world,
                      imageurl: world.imageurl,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DesktopData(
                      white: soccer.whiteImage,
                      love: soccer,
                      imageurl: soccer.imageurl,
                    ),
                    SizedBox(width: 90),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(soccer.title, style: mainStyle),
                        Text(
                          soccer.subtitle,
                          style: subStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
