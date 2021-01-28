import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/menu_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';
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
        backgroundColor: Color(0xFF0B0D0F),
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
                          color: Color(0xFFEBEBEB),
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
                              color: Color(0xFFEBEBEB),
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
                  // ),
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
