import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/menu_mobile.dart';
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
        body: Stack(
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   color: Color(0xFF0F0F0F),
            //   child: Center(
            //     child: Stack(
            //       children: [
            //         Center(
            //           child: Text(
            //             'Work',
            //             style: GoogleFonts.varelaRound(
            //               textStyle: TextStyle(
            //                 fontSize: 100,
            //                 fontWeight: FontWeight.w800,
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Align(
            //           alignment: Alignment.center,
            //           child: Image.asset('assets/15.png'),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/backdrop.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Selected\nWork:',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 80),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 6),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/backdrop.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //color: Color(0xFF0F0F0F),
                    child: Column(
                      children: [
                        SizedBox(height: 26),
                        Center(
                          child: Text(
                            'Select Project',
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
