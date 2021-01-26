import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Dispatch/loos.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

import 'menu_descktop.dart';

class HomeDesktopRedesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   color: Color(0xFF0F0F0F),
            //   width: MediaQuery.of(context).size.width,
            //   // color: (isColored ? Color(0xFFffd600) : Color(0xFF303030)),
            //   child: Center(
            //     child: Stack(
            //       children: [
            //         Stack(
            //           children: [
            //             Center(
            //               child: Text(
            //                 'Travis Ugo',
            //                 style: GoogleFonts.varelaRound(
            //                   textStyle: TextStyle(
            //                     fontSize: 30,
            //                     fontWeight: FontWeight.w800,
            //                     color: mainColor,
            //                     letterSpacing: 0.8,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
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
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/backdrop.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
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
                            color: mainColor,
                          ),
                        ),
                      ],
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
                    child: Column(
                      children: [
                        SizedBox(height: 26),
                        Center(
                          child: Text(
                            'Consistency is all i need to succed\nHard work and Practice will do the magic\nHard work and Practice will do the magic hold molly',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 6,
                        ),
                        //inport wiol
                        Recent(),
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
            //   child: MenuDesktop(),
            // ),
          ],
        ),
      ),
    );
  }
}

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/backdrop.jpeg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: largeText,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/mobileproject'),
            child: Container(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.height / 14,
              decoration: BoxDecoration(
                border: Border.all(color: mainColor, style: BorderStyle.solid),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'View all work',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: mainColor,
                        // (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                  Container(
                    height: 17,
                    width: 1,
                    color: mainColor,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: mainColor,
                    // color: (isColored
                    //     ? Color(0xFF303030)
                    //     : Color(
                    //         0xFFf6f6f6,
                    //       )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopFoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      color: mainColor,
      child: Center(
        child: Text(
          'Whats good HombeBoy',
          style: largeText,
        ),
      ),
    );
  }
}
