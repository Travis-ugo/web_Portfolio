import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Dispatch/correction.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class ProjectsMobileDesign extends StatefulWidget {
  @override
  _ProjectsMobileDesignState createState() => _ProjectsMobileDesignState();
}

class _ProjectsMobileDesignState extends State<ProjectsMobileDesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF303030)),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 2 - 50),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Work.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 80,
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFf6f6f6)),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  //  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 2),

                  Column(
                    children: [
                      SizedBox(height: 26),
                      Center(
                        child: Text(
                          'SELECT PROJECT',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 8,
                      ),
                      MobileRedesign(
                        love: travis,
                        title: travis.title,
                      ),
                      MobileRedesign(
                        love: world,
                        title: world.title,
                      ),
                      MobileRedesign(
                        love: soccer,
                        title: soccer.title,
                      ),
                      MobileRedesign(
                        love: telegram,
                        title: telegram.title,
                      ),
                      MobileRedesign(
                        love: telegram,
                        title: telegram.title,
                      ),
                      MobileRedesign(
                        love: telegram,
                        title: telegram.title,
                      ),
                      SizedBox(height: 100),
                      MobilePin(),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 25,
              left: MediaQuery.of(context).size.width / 2.5,
              child: IconButton(
                icon: (isColored ? moon : sun),
                onPressed: () {
                  setState(() {
                    isColored = isColored == true ? false : true;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: MenuResp(),
            ),
          ],
        ),
      ),
    );
  }
}
